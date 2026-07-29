import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure ObservationalStudiesFoundationPackage where
  targetEstimand : Prop
  identificationAssumptions : Prop
  estimationProcedure : Prop
  sensitivityAssessment : Prop

structure ObservationalStudiesFoundationEvidence (F : ObservationalStudiesFoundationPackage) where
  targetEstimandClosed : F.targetEstimand
  identificationAssumptionsClosed : F.identificationAssumptions
  estimationProcedureClosed : F.estimationProcedure
  sensitivityAssessmentClosed : F.sensitivityAssessment

def ObservationalStudiesFoundationClosed (F : ObservationalStudiesFoundationPackage) : Prop :=
  F.targetEstimand ∧ F.identificationAssumptions ∧ F.estimationProcedure ∧ F.sensitivityAssessment

theorem observational_studies_foundation_closed_from_evidence
    (F : ObservationalStudiesFoundationPackage) (E : ObservationalStudiesFoundationEvidence F) :
    ObservationalStudiesFoundationClosed F := by
  exact And.intro E.targetEstimandClosed
    (And.intro E.identificationAssumptionsClosed
      (And.intro E.estimationProcedureClosed E.sensitivityAssessmentClosed))

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse
