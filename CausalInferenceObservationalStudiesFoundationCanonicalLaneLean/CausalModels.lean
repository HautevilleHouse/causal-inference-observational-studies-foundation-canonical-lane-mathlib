import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CausalInferenceObservationalStudiesFoundationCanonicalLaneLean.CausalAdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure PotentialOutcomes (T Y : Type) where
  Y0 : T → Y
  Y1 : T → Y
  consistency : ∀ (t : T), Y1 t = Y0 t → False

structure CausalDiagram (V : Type) where
  vertices : List V
  edges : List (V × V)
  dSeparated : List V → List V → List V → Prop
  backdoorCriterion : List V → List V → List V → Prop
  frontdoorCriterion : List V → List V → List V → List V → Prop

structure ObservationalData (T Y C : Type) where
  sample : List (T × Y × C)
  iidAssumption : Prop
  samplingMechanism : Prop

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse