import Roque26Municipal.MainTheorems
import Roque26Municipal.Assumptions

/-!
# Human-Facing Paper Interface: Fricciones de ejecución, intensidad óptima y condición de sobrecosto en proyectos municipales

This is the compact Lean file a human should read after formalization to check
whether the paper's definitions and named theorem statements were represented
correctly. Keep the row-level dashboard and LLM audit statements in this file
for every paper. Move implementation details, proof aliases, and bulky helper
lemmas behind imported modules such as `AuditInterface.lean`, but expose the
audited paper-facing statements directly here; do not use
`paper_interface.audit_surface_path`.

Rules for completing this file:

- Keep the paper's definitions/formatted objects first, in source order.
- Expose the actual paper formulas here; do not only point to generic library
  definitions or implementation witnesses.
- A material reusable `AppliedModelingLib` primitive may remain a reference here only
  after `audit/library_semantic_review.json` records its exact bounded library
  declaration and an explicit byte-pinned paper-source connection. The
  dashboard and human-review packet show and source-check that declaration
  before the dependent Spec; a library name, docstring, or glossary is not a
  semantic bridge. Do not add a duplicate paper claim merely to restate it.
- If a named theorem needs a hypothesis that is not derived from earlier Lean
  declarations, declare that hypothesis in `Assumptions.lean` and list it in
  `status.json` `review_surface.assumption_names`.
- Then state the named results directly, with assumptions visible in each
  theorem signature by referencing named paper assumptions imported from
  `Assumptions.lean`.
- In the statement-first phase, write every complete source-facing statement as
  a transparent `<name>Spec : Prop` here, exactly once. Put the paired
  theorem/lemma of that exact type in `ProofInterface.lean`; its temporary
  proof body may be `by sorry` only in a private draft. This separation keeps
  the human semantic surface free of thin wrapper declarations.
- Before drafting that Lean surface, independently inventory every material
  source atom from exact pinned source quote bytes. Do not infer source atoms
  from declaration, binder, field, function, or source-map names.
- Run raw-source-to-expanded-Spec statement matching plus Lean-emitted
  premise/conclusion claim-atom review on the skeleton. The semantic comparison uses
  only byte-pinned source quotes (and separately pinned source context) against
  the expanded transparent Spec; map summaries and proof wrappers are not
  semantic inputs. Then freeze each canonical Lean declaration-manifest digest.
- In the proof phase, replace the `ProofInterface.lean` `sorry` with a short
  proof that calls into `MainTheorems.lean` or lower proof files without
  changing the specification or theorem type. Any specification/type change
  invalidates the freeze and requires a fresh statement audit.
- At formalized closeout, complete the v11 realization receipt: Lean Meta checks
  the theorem has exactly the transparent Spec type; each source atom is bound
  to the elaborated Spec surface; closure traversal includes proof and instance
  arguments; and every material terminal has a source, approved correction or
  additional assumption, checked derivation, or version-pinned foundation
  disposition. No data, container, or identifier-based exemption is allowed.
- The transparent `...Spec` is the sole semantic-review target for its source
  claim. The paired theorem/lemma is a proof endpoint whose exact Spec type is
  verified by Lean Meta, not a duplicate source-to-Lean comparison row.
- Keep proof endpoints, exhaustive endpoint aliases, and proof-seam checks in
  `ProofInterface.lean`, implementation modules, or `ProofLedger.lean`, not
  here. Do not create new `PostPaperAudit.lean` or `AuditLedger.lean` files;
  those names are legacy.

## Named Results

Each entry has one semantic-review target (`Spec`) and one proof endpoint (the
paired theorem/lemma). The human dashboard and review packet present that pair
once rather than treating the two declarations as duplicate paper claims.

- None yet. This interface is intentionally empty because no source-pinned statement spec was supplied.
-/

namespace Roque26Municipal

/-- Proven component of Proposition 1: the candidate is the unique global minimum. -/
def uniqueGlobalMinimumSpec (M F κ : ℝ) (hM : 0 ≤ M)
    (hF : 0 < F) (hκ : 0 < κ) : Prop :=
  let q := Real.sqrt (2 * F / κ)
  0 < q ∧ ∀ e : ℝ, 0 < e →
    MunicipalProject.cost M F κ q ≤ MunicipalProject.cost M F κ e ∧
    (MunicipalProject.cost M F κ e = MunicipalProject.cost M F κ q ↔ e = q)

/-- Proposition 2: exact signs of the log realized/forecast cost ratio. -/
def threeSignsOfCostVariationSpec (M F κA κV : ℝ) (hM : 0 ≤ M)
    (hF : 0 < F) (hκA : 0 < κA) (hκV : 0 < κV) : Prop :=
  (0 < MunicipalProject.logCostRatio M F κA κV ↔ κV < κA) ∧
  (MunicipalProject.logCostRatio M F κA κV = 0 ↔ κA = κV) ∧
  (MunicipalProject.logCostRatio M F κA κV < 0 ↔ κA < κV)

end Roque26Municipal
