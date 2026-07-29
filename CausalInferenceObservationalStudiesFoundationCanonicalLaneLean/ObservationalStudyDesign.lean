import causalInferenceObservationalStudiesFoundationCanonicalLaneLean.ConfoundingControl

/-!
# Observational Study Design Package
-/

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure ObservationalStudyDesignPackage {T : TreatmentEffectPackage}
    {C : ConfoundingControlPackage T} where
  targetPopulation : Type u
  selectionBiasHandling : Prop
  measurementErrorModel : Prop
  sampleSizeJustification : Prop
  studyProtocol : Prop

structure ObservationalStudyDesignEvidence {T : TreatmentEffectPackage}
    {C : ConfoundingControlPackage T} (D : ObservationalStudyDesignPackage T C) where
  selectionBiasHandlingClosed : D.selectionBiasHandling
  measurementErrorModelClosed : D.measurementErrorModel
  sampleSizeJustificationClosed : D.sampleSizeJustification
  studyProtocolClosed : D.studyProtocol

def ObservationalStudyDesignClosed {T : TreatmentEffectPackage}
    {C : ConfoundingControlPackage T} (D : ObservationalStudyDesignPackage T C) : Prop :=
  D.selectionBiasHandling ∧ D.measurementErrorModel ∧
  D.sampleSizeJustification ∧ D.studyProtocol

theorem observational_study_design_closed_from_evidence
    {T : TreatmentEffectPackage} {C : ConfoundingControlPackage T}
    (D : ObservationalStudyDesignPackage T C)
    (E : ObservationalStudyDesignEvidence D) : ObservationalStudyDesignClosed D := by
  exact And.intro E.selectionBiasHandlingClosed
    (And.intro E.measurementErrorModelClosed
      (And.intro E.sampleSizeJustificationClosed E.studyProtocolClosed))

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse