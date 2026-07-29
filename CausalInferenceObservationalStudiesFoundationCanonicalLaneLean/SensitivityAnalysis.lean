import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure SensitivityAnalysis where
  unmeasuredConfoundingModel : Prop
  boundingMethod : Prop
  robustnessCheck : Prop
  eValueComputed : Prop

structure SensitivityAnalysisEvidence (S : SensitivityAnalysis) where
  unmeasuredConfoundingModelClosed : S.unmeasuredConfoundingModel
  boundingMethodClosed : S.boundingMethod
  robustnessCheckClosed : S.robustnessCheck
  eValueComputedClosed : S.eValueComputed

def SensitivityAnalysisClosed (S : SensitivityAnalysis) : Prop :=
  S.unmeasuredConfoundingModel ∧ S.boundingMethod ∧ S.robustnessCheck ∧ S.eValueComputed

theorem sensitivity_analysis_closed_from_evidence (S : SensitivityAnalysis) (E : SensitivityAnalysisEvidence S) :
    SensitivityAnalysisClosed S := by
  exact And.intro E.unmeasuredConfoundingModelClosed
    (And.intro E.boundingMethodClosed
      (And.intro E.robustnessCheckClosed E.eValueComputedClosed))

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse