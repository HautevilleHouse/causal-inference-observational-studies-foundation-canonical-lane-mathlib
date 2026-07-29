import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure CausalAdmittedObject where
  population : Type
  observedData : population -> Prop
  treatmentAssignment : population -> Prop
  outcome : population -> Type
  causalEffectIdentified : Prop
  identificationAssumptions : Prop
  conclusion : causalEffectIdentified

structure AdmissibleClass where
  object : CausalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.causalEffectIdentified) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse
