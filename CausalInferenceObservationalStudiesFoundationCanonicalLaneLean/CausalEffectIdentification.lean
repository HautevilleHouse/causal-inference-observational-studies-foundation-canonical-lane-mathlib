import CausalInferenceObservationalStudiesFoundationCanonicalLaneLean.ObservationalStudyDesign

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure CausalEffectIdentification {A : CausalAdmittedObject} {M : PotentialOutcomesModel A} {D : ObservationalStudyDesign M} where
  estimand : Type
  estimator : Type
  identificationAssumptions : Prop
  asymptoticProperties : Prop

def CausalEffectIdentificationClosed {A : CausalAdmittedObject} {M : PotentialOutcomesModel A} {D : ObservationalStudyDesign M} (I : CausalEffectIdentification D) : Prop :=
  I.identificationAssumptions ∧ I.asymptoticProperties

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse