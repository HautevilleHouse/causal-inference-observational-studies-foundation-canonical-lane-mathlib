import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure IdentificationStrategy where
  backdoorCriterion : Prop
  instrumentalVariables : Prop
  frontdoorCriterion : Prop
  differenceInDifferences : Prop
  regressionDiscontinuity : Prop

structure IdentificationStrategyEvidence (S : IdentificationStrategy) where
  backdoorCriterionClosed : S.backdoorCriterion
  instrumentalVariablesClosed : S.instrumentalVariables
  frontdoorCriterionClosed : S.frontdoorCriterion
  differenceInDifferencesClosed : S.differenceInDifferences
  regressionDiscontinuityClosed : S.regressionDiscontinuity

def IdentificationStrategyClosed (S : IdentificationStrategy) : Prop :=
  S.backdoorCriterion ∧ S.instrumentalVariables ∧ S.frontdoorCriterion ∧
  S.differenceInDifferences ∧ S.regressionDiscontinuity

theorem identification_strategy_closed_from_evidence (S : IdentificationStrategy)
    (E : IdentificationStrategyEvidence S) : IdentificationStrategyClosed S := by
  exact And.intro E.backdoorCriterionClosed
    (And.intro E.instrumentalVariablesClosed
      (And.intro E.frontdoorCriterionClosed
        (And.intro E.differenceInDifferencesClosed E.regressionDiscontinuityClosed)))

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse