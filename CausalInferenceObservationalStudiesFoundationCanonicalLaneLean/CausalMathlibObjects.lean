import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Set.Basic

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure CausalSpace where
  units : Type
  treatments : Type
  outcomes : Type

structure CausalAdmittedObject where
  space : CausalSpace
  ignorability : Prop
  consistency : Prop
  positivity : Prop
  conclusion : ignorability ∧ consistency ∧ positivity

def CausalWitnessClosed (O : CausalAdmittedObject) : Prop :=
  O.conclusion

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse