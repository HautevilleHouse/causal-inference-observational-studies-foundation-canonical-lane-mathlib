import HautevilleHouse.CausalInferenceObservationalStudiesFoundationCanonicalLaneLean.IdentifiabilityAssumptions

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure CausalEstimands where
  averageTreatmentEffect : Prop
  conditionalAverageTreatmentEffect : Prop
  intentToTreat : Prop

def CausalEstimandsClosed (E : CausalEstimands) : Prop :=
  E.averageTreatmentEffect ∧ E.conditionalAverageTreatmentEffect ∧ E.intentToTreat

theorem causal_estimands_closed_from_evidence (E : CausalEstimands)
    (h1 : E.averageTreatmentEffect) (h2 : E.conditionalAverageTreatmentEffect) (h3 : E.intentToTreat) :
    CausalEstimandsClosed E := by
  exact And.intro h1 (And.intro h2 h3)

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse