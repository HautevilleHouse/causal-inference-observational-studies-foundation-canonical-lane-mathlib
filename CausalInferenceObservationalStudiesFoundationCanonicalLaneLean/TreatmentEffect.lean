import causalInferenceObservationalStudiesFoundationCanonicalLaneLean.AdmissibleClass

/-!
# Treatment Effect Package
-/

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure TreatmentEffectPackage where
  causalEstimand : Type u
  identificationAssumptions : Prop
  estimationProcedure : Prop
  consistency : Prop
  noUnmeasuredConfounding : Prop

structure TreatmentEffectEvidence (T : TreatmentEffectPackage) where
  identificationAssumptionsClosed : T.identificationAssumptions
  estimationProcedureClosed : T.estimationProcedure
  consistencyClosed : T.consistency
  noUnmeasuredConfoundingClosed : T.noUnmeasuredConfounding

def TreatmentEffectClosed (T : TreatmentEffectPackage) : Prop :=
  T.identificationAssumptions ∧ T.estimationProcedure ∧
  T.consistency ∧ T.noUnmeasuredConfounding

theorem treatment_effect_closed_from_evidence
    (T : TreatmentEffectPackage) (E : TreatmentEffectEvidence T) :
    TreatmentEffectClosed T := by
  exact And.intro E.identificationAssumptionsClosed
    (And.intro E.estimationProcedureClosed
      (And.intro E.consistencyClosed E.noUnmeasuredConfoundingClosed))

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse