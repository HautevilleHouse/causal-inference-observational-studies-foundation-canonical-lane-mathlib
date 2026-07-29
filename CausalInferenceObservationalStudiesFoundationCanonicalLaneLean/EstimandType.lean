import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure EstimandType where
  averageTreatmentEffect : Prop
  conditionalAverageTreatmentEffect : Prop
  naturalDirectEffect : Prop
  naturalIndirectEffect : Prop

structure EstimandTypeEvidence (E : EstimandType) where
  averageTreatmentEffectClosed : E.averageTreatmentEffect
  conditionalAverageTreatmentEffectClosed : E.conditionalAverageTreatmentEffect
  naturalDirectEffectClosed : E.naturalDirectEffect
  naturalIndirectEffectClosed : E.naturalIndirectEffect

def EstimandTypeClosed (E : EstimandType) : Prop :=
  E.averageTreatmentEffect ∧ E.conditionalAverageTreatmentEffect ∧
  E.naturalDirectEffect ∧ E.naturalIndirectEffect

theorem estimand_type_closed_from_evidence (E : EstimandType) (Ev : EstimandTypeEvidence E) :
    EstimandTypeClosed E := by
  exact And.intro Ev.averageTreatmentEffectClosed
    (And.intro Ev.conditionalAverageTreatmentEffectClosed
      (And.intro Ev.naturalDirectEffectClosed Ev.naturalIndirectEffectClosed))

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse