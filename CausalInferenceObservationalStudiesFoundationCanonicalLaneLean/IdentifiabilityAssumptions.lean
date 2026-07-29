import HautevilleHouse.CausalInferenceObservationalStudiesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure IdentifiabilityAssumptions where
  ignorability : Prop
  positivity : Prop
  consistency : Prop
  noUnmeasuredConfounding : Prop

def IdentifiabilityClosed (A : IdentifiabilityAssumptions) : Prop :=
  A.ignorability ∧ A.positivity ∧ A.consistency ∧ A.noUnmeasuredConfounding

theorem identifiability_closed_from_assumptions (A : IdentifiabilityAssumptions)
    (h1 : A.ignorability) (h2 : A.positivity) (h3 : A.consistency) (h4 : A.noUnmeasuredConfounding) :
    IdentifiabilityClosed A := by
  exact And.intro h1 (And.intro h2 (And.intro h3 h4))

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse