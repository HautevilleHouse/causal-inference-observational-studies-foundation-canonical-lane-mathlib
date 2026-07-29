import CausalInferenceObservationalStudiesFoundationCanonicalLaneLean.CausalMathlibObjects

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure PotentialOutcomesModel (A : CausalAdmittedObject) where
  potentialOutcome : A.space.units → A.space.treatments → A.space.outcomes
  consistencyAssumption : Prop
  ignorabilityAssumption : Prop
  positivityAssumption : Prop

def PotentialOutcomesModelClosed {A : CausalAdmittedObject} (M : PotentialOutcomesModel A) : Prop :=
  M.consistencyAssumption ∧ M.ignorabilityAssumption ∧ M.positivityAssumption

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse