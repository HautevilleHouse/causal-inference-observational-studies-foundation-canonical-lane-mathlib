import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure InstrumentalVariablesPackage where
  instrument : Type u
  exposure : Type v
  outcome : Type w
  exclusionRestriction : Prop
  relevanceCondition : Prop
  monotonicityAssumption : Prop

structure InstrumentalVariablesEvidence (I : InstrumentalVariablesPackage) where
  instrumentClosed : I.instrument
  exposureClosed : I.exposure
  outcomeClosed : I.outcome
  exclusionRestrictionClosed : I.exclusionRestriction
  relevanceConditionClosed : I.relevanceCondition
  monotonicityAssumptionClosed : I.monotonicityAssumption

def InstrumentalVariablesClosed (I : InstrumentalVariablesPackage) : Prop :=
  I.instrument ∧ I.exposure ∧ I.outcome ∧
  I.exclusionRestriction ∧ I.relevanceCondition ∧ I.monotonicityAssumption

theorem instrumental_variables_closed_from_evidence
    (I : InstrumentalVariablesPackage) (E : InstrumentalVariablesEvidence I) :
    InstrumentalVariablesClosed I := by
  exact And.intro E.instrumentClosed
    (And.intro E.exposureClosed
      (And.intro E.outcomeClosed
        (And.intro E.exclusionRestrictionClosed
          (And.intro E.relevanceConditionClosed
            E.monotonicityAssumptionClosed))))

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse
