import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CausalInferenceObservationalStudiesFoundationCanonicalLaneLean.CausalAdmissibleClass
import HautevilleHouse.CausalInferenceObservationalStudiesFoundationCanonicalLaneLean.CausalModels

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure IPWEstimator (T Y : Type) where
  propensityScore : T → Prop
  weights : (T × Y) → ℝ
  estimator : (T × Y) → ℝ
  consistencyCondition : Prop
  asymptoticallyNormal : Prop
  consistencyClosed : consistencyCondition
  asymptoticClosed : asymptoticallyNormal

def IPWEstimatorClosed (T Y : Type) (est : IPWEstimator T Y) : Prop :=
  est.consistencyCondition ∧ est.asymptoticallyNormal

theorem ipw_estimator_closed (T Y : Type) (est : IPWEstimator T Y) : IPWEstimatorClosed T Y est := by
  exact And.intro est.consistencyClosed est.asymptoticClosed

structure GComputation (T Y : Type) where
  outcomeRegression : T → Y → ℝ
  estimator : (T × Y) → ℝ
  consistencyCondition : Prop
  consistencyClosed : consistencyCondition

def GComputationClosed (T Y : Type) (g : GComputation T Y) : Prop :=
  g.consistencyCondition

theorem g_computation_closed (T Y : Type) (g : GComputation T Y) : GComputationClosed T Y g := by
  exact g.consistencyClosed

structure AIPWEstimator (T Y : Type) where
  propensityScore : T → Prop
  outcomeRegression : T → Y → ℝ
  estimator : (T × Y) → ℝ
  doublyRobust : Prop
  consistencyCondition : Prop
  doublyRobustClosed : doublyRobust
  consistencyClosed : consistencyCondition

def AIPWEstimatorClosed (T Y : Type) (est : AIPWEstimator T Y) : Prop :=
  est.doublyRobust ∧ est.consistencyCondition

theorem aipw_estimator_closed (T Y : Type) (est : AIPWEstimator T Y) : AIPWEstimatorClosed T Y est := by
  exact And.intro est.doublyRobustClosed est.consistencyClosed

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse