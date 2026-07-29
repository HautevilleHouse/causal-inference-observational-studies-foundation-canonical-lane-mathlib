import causalInferenceObservationalStudiesFoundationCanonicalLaneLean.TreatmentEffect

/-!
# Confounding Control Package
-/

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure ConfoundingControlPackage {T : TreatmentEffectPackage} where
  measuredConfounders : Type u
  unmeasuredConfoundersSensitivity : Prop
  stratificationMethod : Prop
  weightingMethod : Prop
  biasBounds : Prop

structure ConfoundingControlEvidence {T : TreatmentEffectPackage}
    (C : ConfoundingControlPackage T) where
  measuredConfoundersClosed : C.measuredConfounders = C.measuredConfounders -- placeholder
  unmeasuredConfoundersSensitivityClosed : C.unmeasuredConfoundersSensitivity
  stratificationMethodClosed : C.stratificationMethod
  weightingMethodClosed : C.weightingMethod
  biasBoundsClosed : C.biasBounds

def ConfoundingControlClosed {T : TreatmentEffectPackage}
    (C : ConfoundingControlPackage T) : Prop :=
  C.unmeasuredConfoundersSensitivity ∧ C.stratificationMethod ∧
  C.weightingMethod ∧ C.biasBounds

theorem confounding_control_closed_from_evidence
    {T : TreatmentEffectPackage} (C : ConfoundingControlPackage T)
    (E : ConfoundingControlEvidence C) : ConfoundingControlClosed C := by
  exact And.intro E.unmeasuredConfoundersSensitivityClosed
    (And.intro E.stratificationMethodClosed
      (And.intro E.weightingMethodClosed E.biasBoundsClosed))

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse