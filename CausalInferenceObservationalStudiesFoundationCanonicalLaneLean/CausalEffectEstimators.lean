import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure CausalEffectEstimatorsPackage {T : TreatmentAssignmentMechanismPackage}
    {I : IdentificationStrategiesPackage T} where
  ipwEstimator : Prop
  doublyRobustEstimator : Prop
  gComputation : Prop
  drEstimationConsistency : Prop

structure CausalEffectEstimatorsEvidence {T : TreatmentAssignmentMechanismPackage}
    {I : IdentificationStrategiesPackage T} (E : CausalEffectEstimatorsPackage T I) where
  ipwEstimatorClosed : E.ipwEstimator
  doublyRobustEstimatorClosed : E.doublyRobustEstimator
  gComputationClosed : E.gComputation
  drEstimationConsistencyClosed : E.drEstimationConsistency

def CausalEffectEstimatorsClosed {T : TreatmentAssignmentMechanismPackage}
    {I : IdentificationStrategiesPackage T} (E : CausalEffectEstimatorsPackage T I) : Prop :=
  E.ipwEstimator ∧ E.doublyRobustEstimator ∧ E.gComputation ∧ E.drEstimationConsistency

theorem causal_effect_estimators_closed_from_evidence
    {T : TreatmentAssignmentMechanismPackage} {I : IdentificationStrategiesPackage T}
    (E : CausalEffectEstimatorsPackage T I) (Ev : CausalEffectEstimatorsEvidence E) :
    CausalEffectEstimatorsClosed E := by
  exact And.intro Ev.ipwEstimatorClosed
    (And.intro Ev.doublyRobustEstimatorClosed
      (And.intro Ev.gComputationClosed Ev.drEstimationConsistencyClosed))

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse
