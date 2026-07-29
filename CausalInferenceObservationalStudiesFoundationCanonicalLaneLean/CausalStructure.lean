import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure ObservationalStudy where
  treatment : Type
  outcome : Type
  covariates : Type
  sampleSize : Nat
  unconfoundednessAssumed : Prop
  positivityAssumed : Prop
  consistencyAssumed : Prop

structure CausalAdmittedObject where
  study : ObservationalStudy
  identificationProved : Prop
  conclusion : identificationProved

def identificationClosed (O : CausalAdmittedObject) : Prop :=
  O.identificationProved

structure AdmissibleClass where
  object : CausalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  identificationClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse