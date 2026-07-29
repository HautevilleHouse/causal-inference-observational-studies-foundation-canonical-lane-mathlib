import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure ConfoundingBiasPackage where
  observedCovariates : Type u
  unobservedConfounders : Type v
  biasFormula : Prop
  ignorabilityAssumption : Prop
  positivityAssumption : Prop

structure ConfoundingBiasEvidence (C : ConfoundingBiasPackage) where
  observedCovariatesClosed : C.observedCovariates
  unobservedConfoundersClosed : C.unobservedConfounders
  biasFormulaClosed : C.biasFormula
  ignorabilityAssumptionClosed : C.ignorabilityAssumption
  positivityAssumptionClosed : C.positivityAssumption

def ConfoundingBiasClosed (C : ConfoundingBiasPackage) : Prop :=
  C.observedCovariates ∧ C.unobservedConfounders ∧
  C.biasFormula ∧ C.ignorabilityAssumption ∧ C.positivityAssumption

theorem confounding_bias_closed_from_evidence
    (C : ConfoundingBiasPackage) (E : ConfoundingBiasEvidence C) :
    ConfoundingBiasClosed C := by
  exact And.intro E.observedCovariatesClosed
    (And.intro E.unobservedConfoundersClosed
      (And.intro E.biasFormulaClosed
        (And.intro E.ignorabilityAssumptionClosed
          E.positivityAssumptionClosed)))

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse
