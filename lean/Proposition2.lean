import Mathlib.Data.Real.Sqrt
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

namespace MunicipalProject

/-- Optimal cost of the same project when the friction parameter is `κ`. -/
noncomputable def optimalCost (M F κ : ℝ) : ℝ := M + Real.sqrt (2 * F * κ)

/-- Log cost variation: actual cost divided by the prior forecast. -/
noncomputable def logCostRatio (M F κA κV : ℝ) : ℝ :=
  Real.log (optimalCost M F κA / optimalCost M F κV)

private theorem optimalCost_pos (M F κ : ℝ)
    (hM : 0 ≤ M) (hF : 0 < F) (hκ : 0 < κ) :
    0 < optimalCost M F κ := by
  unfold optimalCost
  have harg : 0 < 2 * F * κ := by positivity
  have hsqrt : 0 < Real.sqrt (2 * F * κ) := Real.sqrt_pos.2 harg
  linarith

private theorem optimalCost_lt_iff (M F κ₁ κ₂ : ℝ)
    (hF : 0 < F) (hκ₁ : 0 < κ₁) (_hκ₂ : 0 < κ₂) :
    optimalCost M F κ₁ < optimalCost M F κ₂ ↔ κ₁ < κ₂ := by
  unfold optimalCost
  have hc : 0 < 2 * F := by positivity
  constructor
  · intro h
    have hs : Real.sqrt (2 * F * κ₁) < Real.sqrt (2 * F * κ₂) := by linarith
    have hp : 2 * F * κ₁ < 2 * F * κ₂ :=
      (Real.sqrt_lt_sqrt_iff (by positivity)).mp hs
    exact (mul_lt_mul_iff_of_pos_left hc).mp hp
  · intro h
    have hp : 2 * F * κ₁ < 2 * F * κ₂ :=
      (mul_lt_mul_iff_of_pos_left hc).mpr h
    have hs : Real.sqrt (2 * F * κ₁) < Real.sqrt (2 * F * κ₂) :=
      (Real.sqrt_lt_sqrt_iff (by positivity)).mpr hp
    linarith

private theorem optimalCost_eq_iff (M F κ₁ κ₂ : ℝ)
    (hF : 0 < F) (hκ₁ : 0 < κ₁) (hκ₂ : 0 < κ₂) :
    optimalCost M F κ₁ = optimalCost M F κ₂ ↔ κ₁ = κ₂ := by
  constructor
  · intro h
    have hs : Real.sqrt (2 * F * κ₁) = Real.sqrt (2 * F * κ₂) := by
      simpa [optimalCost] using h
    have hp : 2 * F * κ₁ = 2 * F * κ₂ :=
      (Real.sqrt_inj (by positivity) (by positivity)).mp hs
    exact mul_left_cancel₀ (by positivity : (2 * F) ≠ 0) hp
  · intro h
    rw [h]

/-- The three cases for the actual cost less the forecast cost. -/
theorem cost_difference_signs (M F κA κV : ℝ)
    (hF : 0 < F) (hκA : 0 < κA) (hκV : 0 < κV) :
    (0 < optimalCost M F κA - optimalCost M F κV ↔ κV < κA) ∧
    (optimalCost M F κA - optimalCost M F κV = 0 ↔ κA = κV) ∧
    (optimalCost M F κA - optimalCost M F κV < 0 ↔ κA < κV) := by
  constructor
  · simpa only [sub_pos] using optimalCost_lt_iff M F κV κA hF hκV hκA
  constructor
  · simpa only [sub_eq_zero] using optimalCost_eq_iff M F κA κV hF hκA hκV
  · simpa only [sub_neg] using optimalCost_lt_iff M F κA κV hF hκA hκV

/-- Proposition 2, including the positive, zero and negative cases. -/
theorem three_signs_of_cost_variation (M F κA κV : ℝ)
    (hM : 0 ≤ M) (hF : 0 < F) (hκA : 0 < κA) (hκV : 0 < κV) :
    (0 < logCostRatio M F κA κV ↔ κV < κA) ∧
    (logCostRatio M F κA κV = 0 ↔ κA = κV) ∧
    (logCostRatio M F κA κV < 0 ↔ κA < κV) := by
  have ha := optimalCost_pos M F κA hM hF hκA
  have hv := optimalCost_pos M F κV hM hF hκV
  constructor
  · unfold logCostRatio
    rw [Real.log_pos_iff (div_pos ha hv).le, one_lt_div hv]
    exact optimalCost_lt_iff M F κV κA hF hκV hκA
  constructor
  · unfold logCostRatio
    constructor
    · intro h
      have hr : optimalCost M F κA / optimalCost M F κV = 1 :=
        Real.eq_one_of_pos_of_log_eq_zero (div_pos ha hv) h
      have hc : optimalCost M F κA = optimalCost M F κV :=
        (div_eq_one_iff_eq hv.ne').mp hr
      exact (optimalCost_eq_iff M F κA κV hF hκA hκV).mp hc
    · intro h
      rw [h]
      simp [hv.ne']
  · unfold logCostRatio
    rw [Real.log_neg_iff (div_pos ha hv), div_lt_one hv]
    exact optimalCost_lt_iff M F κA κV hF hκA hκV

/-- Exogenous forecast friction in the partial-anticipation extension. -/
def forecastFriction (κA κbar lam : ℝ) : ℝ := lam * κA + (1 - lam) * κbar

theorem actual_minus_forecast (κA κbar lam : ℝ) :
    κA - forecastFriction κA κbar lam = (1 - lam) * (κA - κbar) := by
  unfold forecastFriction
  ring

theorem exact_anticipation_zero (M F κA κbar : ℝ)
    (hM : 0 ≤ M) (hF : 0 < F) (hκA : 0 < κA) :
    logCostRatio M F κA (forecastFriction κA κbar 1) = 0 := by
  have ha := optimalCost_pos M F κA hM hF hκA
  simp [forecastFriction, logCostRatio, ha.ne']

end MunicipalProject
