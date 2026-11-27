import Roque26Municipal.PaperInterface

/-!
# Proof Interface: Fricciones de ejecución, intensidad óptima y condición de sobrecosto en proyectos municipales

This file contains exact-type proof endpoints for the transparent propositions
in `PaperInterface.lean`. It is not a human semantic-review surface: one source
claim is reviewed once, against its expanded `...Spec : Prop` declaration.
-/

namespace Roque26Municipal

theorem uniqueGlobalMinimum (M F κ : ℝ) (hM : 0 ≤ M)
    (hF : 0 < F) (hκ : 0 < κ) :
    uniqueGlobalMinimumSpec M F κ hM hF hκ := by
  exact MunicipalProject.unique_global_minimum M F κ hM hF hκ

theorem threeSignsOfCostVariation (M F κA κV : ℝ) (hM : 0 ≤ M)
    (hF : 0 < F) (hκA : 0 < κA) (hκV : 0 < κV) :
    threeSignsOfCostVariationSpec M F κA κV hM hF hκA hκV := by
  exact MunicipalProject.three_signs_of_cost_variation M F κA κV hM hF hκA hκV

end Roque26Municipal
