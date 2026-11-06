import Mathlib.Data.Real.Sqrt
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Linarith

namespace MunicipalProject

/-- Total implementation cost for positive intensity. -/
noncomputable def cost (M F κ e : ℝ) : ℝ := M + F / e + κ * e / 2

private theorem gap_at_candidate (M F κ q e : ℝ)
    (he : 0 < e) (hF : F = κ * q ^ 2 / 2) :
    cost M F κ e - cost M F κ q = κ * (e - q) ^ 2 / (2 * e) := by
  unfold cost
  rw [hF]
  field_simp
  ring

/-- The global-minimum part of Proposition 1 in `slides/final.tex`. -/
theorem unique_global_minimum (M F κ : ℝ) (_hM : 0 ≤ M)
    (hF : 0 < F) (hκ : 0 < κ) :
    let q := Real.sqrt (2 * F / κ)
    0 < q ∧ ∀ e : ℝ, 0 < e →
      cost M F κ q ≤ cost M F κ e ∧
      (cost M F κ e = cost M F κ q ↔ e = q) := by
  dsimp
  have harg : 0 < 2 * F / κ := div_pos (by positivity) hκ
  have hq : 0 < Real.sqrt (2 * F / κ) := Real.sqrt_pos.2 harg
  have hsq : (Real.sqrt (2 * F / κ)) ^ 2 = 2 * F / κ :=
    Real.sq_sqrt (le_of_lt harg)
  have hFq : F = κ * (Real.sqrt (2 * F / κ)) ^ 2 / 2 := by
    rw [hsq]
    field_simp
  refine ⟨hq, ?_⟩
  intro e he
  have hgap := gap_at_candidate M F κ (Real.sqrt (2 * F / κ)) e he hFq
  have hden : 0 < 2 * e := by positivity
  have hgap_nonneg : 0 ≤ κ * (e - Real.sqrt (2 * F / κ)) ^ 2 / (2 * e) :=
    div_nonneg (mul_nonneg (le_of_lt hκ) (sq_nonneg _)) (le_of_lt hden)
  constructor
  · linarith
  · constructor
    · intro heq
      have hdivision : κ * (e - Real.sqrt (2 * F / κ)) ^ 2 / (2 * e) = 0 := by
        rw [← hgap]
        linarith
      have hz : κ * (e - Real.sqrt (2 * F / κ)) ^ 2 = 0 := by
        rcases (div_eq_zero_iff.mp hdivision) with hz | hzero
        · exact hz
        · exact False.elim ((ne_of_gt hden) hzero)
      have hd : (e - Real.sqrt (2 * F / κ)) ^ 2 = 0 :=
        (mul_eq_zero.mp hz).resolve_left (ne_of_gt hκ)
      nlinarith [sq_nonneg (e - Real.sqrt (2 * F / κ))]
    · intro heq
      rw [heq]

end MunicipalProject
