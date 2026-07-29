import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CausalInferenceObservationalStudiesFoundationCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CausalInferenceObservationalStudiesFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

def ConstrainedCausalInferenceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_causal_inference_endgame (A : AdmissibleClass) :
    ConstrainedCausalInferenceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse