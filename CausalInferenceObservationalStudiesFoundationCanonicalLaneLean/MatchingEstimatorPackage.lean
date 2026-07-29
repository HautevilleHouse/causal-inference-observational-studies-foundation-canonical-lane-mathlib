import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure MatchingEstimatorPackage where
  matchingAlgorithm : Type u
  covariateSpace : Type v
  distanceMetric : Type w
  balanceCondition : Prop
  exactMatchesPossible : Prop
  largeSampleApproximation : Prop

structure MatchingEstimatorEvidence (M : MatchingEstimatorPackage) where
  balanceConditionClosed : M.balanceCondition
  exactMatchesClosed : M.exactMatchesPossible
  largeSampleClosed : M.largeSampleApproximation

def MatchingEstimatorClosed (M : MatchingEstimatorPackage) : Prop :=
  M.balanceCondition ∧ M.exactMatchesPossible ∧ M.largeSampleApproximation

theorem matching_estimator_closed_from_evidence (M : MatchingEstimatorPackage) (E : MatchingEstimatorEvidence M) :
    MatchingEstimatorClosed M := by
  exact And.intro E.balanceConditionClosed (And.intro E.exactMatchesClosed E.largeSampleClosed)

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse