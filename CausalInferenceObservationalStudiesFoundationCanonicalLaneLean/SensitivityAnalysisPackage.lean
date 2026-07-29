import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure SensitivityAnalysisPackage where
  eValueDefined : Prop
  biasBoundsDerived : Prop
  robustnessAssessment : Prop
  sensitivityConclusion : Prop

structure SensitivityAnalysisEvidence (S : SensitivityAnalysisPackage) where
  eValueDefinedClosed : S.eValueDefined
  biasBoundsDerivedClosed : S.biasBoundsDerived
  robustnessAssessmentClosed : S.robustnessAssessment
  sensitivityConclusionClosed : S.sensitivityConclusion

def SensitivityAnalysisClosed (S : SensitivityAnalysisPackage) : Prop :=
  S.eValueDefined ∧ S.biasBoundsDerived ∧ S.robustnessAssessment ∧ S.sensitivityConclusion

theorem sensitivity_analysis_closed_from_evidence (S : SensitivityAnalysisPackage) (Ev : SensitivityAnalysisEvidence S) :
    SensitivityAnalysisClosed S := by
  exact And.intro Ev.eValueDefinedClosed (And.intro Ev.biasBoundsDerivedClosed (And.intro Ev.robustnessAssessmentClosed Ev.sensitivityConclusionClosed))

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse
