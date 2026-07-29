import HautevilleHouse.CausalInferenceObservationalStudiesFoundationCanonicalLaneLean.CausalInferenceAdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure CausalIgnorabilityPackage where
  treatmentAssignment : Type
  outcome : Type
  confounders : Type
  unconfoundedness : Prop
  positivity : Prop
  identification : Prop

structure CausalIgnorabilityEvidence (C : CausalIgnorabilityPackage) where
  unconfoundednessClosed : C.unconfoundedness
  positivityClosed : C.positivity
  identificationClosed : C.identification

def CausalIgnorabilityClosed (C : CausalIgnorabilityPackage) : Prop :=
  C.unconfoundedness ∧ C.positivity ∧ C.identification

theorem causal_ignorability_closed_from_evidence (C : CausalIgnorabilityPackage)
    (E : CausalIgnorabilityEvidence C) : CausalIgnorabilityClosed C := by
  exact And.intro E.unconfoundednessClosed (And.intro E.positivityClosed E.identificationClosed)

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse
