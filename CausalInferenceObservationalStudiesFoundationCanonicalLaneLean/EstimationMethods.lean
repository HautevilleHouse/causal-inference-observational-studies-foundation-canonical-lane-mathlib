import HautevilleHouse.CausalInferenceObservationalStudiesFoundationCanonicalLaneLean.CausalEstimands

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure EstimationMethods where
  propensityScoreMatching : Prop
  inverseProbabilityWeighting : Prop
  doublyRobust : Prop
  instrumentVariables : Prop

def EstimationMethodsClosed (M : EstimationMethods) : Prop :=
  M.propensityScoreMatching ∧ M.inverseProbabilityWeighting ∧ M.doublyRobust ∧ M.instrumentVariables

theorem estimation_methods_closed_from_evidence (M : EstimationMethods)
    (h1 : M.propensityScoreMatching) (h2 : M.inverseProbabilityWeighting)
    (h3 : M.doublyRobust) (h4 : M.instrumentVariables) :
    EstimationMethodsClosed M := by
  exact And.intro h1 (And.intro h2 (And.intro h3 h4))

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse