import HautevilleHouse.CausalInferenceObservationalStudiesFoundationCanonicalLaneLean.CausalGateLemmas

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

def CausalInferenceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem causal_inference_endgame (A : AdmissibleClass) :
    CausalInferenceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse
