import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : CausalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CausalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse