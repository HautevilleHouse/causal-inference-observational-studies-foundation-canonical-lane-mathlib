import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure EstimationPackage where
  ipwEstimator : Prop
  outcomeRegressionEstimator : Prop
  doublyRobustEstimator : Prop
  asymptoticProperties : Prop

structure EstimationEvidence (Est : EstimationPackage) where
  ipwEstimatorClosed : Est.ipwEstimator
  outcomeRegressionEstimatorClosed : Est.outcomeRegressionEstimator
  doublyRobustEstimatorClosed : Est.doublyRobustEstimator
  asymptoticPropertiesClosed : Est.asymptoticProperties

def EstimationClosed (Est : EstimationPackage) : Prop :=
  Est.ipwEstimator ∧ Est.outcomeRegressionEstimator ∧ Est.doublyRobustEstimator ∧ Est.asymptoticProperties

theorem estimation_closed_from_evidence (Est : EstimationPackage) (Ev : EstimationEvidence Est) :
    EstimationClosed Est := by
  exact And.intro Ev.ipwEstimatorClosed (And.intro Ev.outcomeRegressionEstimatorClosed (And.intro Ev.doublyRobustEstimatorClosed Ev.asymptoticPropertiesClosed))

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse
