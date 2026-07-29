import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure CausalSpace where
  carrier : Type
  sigmaAlgebra : Set (Set carrier)
  probabilityMeasures : Type

structure CausalAdmittedObject where
  space : CausalSpace
  treatmentAssignment : carrier → Bool
  outcome : carrier → ℝ
  ignorability : Prop
  positivity : Prop
  consistency : Prop
  conclusion : ignorability ∧ positivity ∧ consistency

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse