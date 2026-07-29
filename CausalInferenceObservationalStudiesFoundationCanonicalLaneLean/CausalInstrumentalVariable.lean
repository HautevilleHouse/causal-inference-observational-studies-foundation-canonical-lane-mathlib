import HautevilleHouse.CausalInferenceObservationalStudiesFoundationCanonicalLaneLean.CausalIgnorabilityIdentification

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure InstrumentalVariablePackage {C : CausalIgnorabilityPackage} where
  instrument : Type
  exclusionRestriction : Prop
  relevanceCondition : Prop
  monotonicity : Prop

structure InstrumentalVariableEvidence {C : CausalIgnorabilityPackage}
    (IV : InstrumentalVariablePackage C) where
  exclusionRestrictionClosed : IV.exclusionRestriction
  relevanceConditionClosed : IV.relevanceCondition
  monotonicityClosed : IV.monotonicity

def InstrumentalVariableClosed {C : CausalIgnorabilityPackage}
    (IV : InstrumentalVariablePackage C) : Prop :=
  IV.exclusionRestriction ∧ IV.relevanceCondition ∧ IV.monotonicity

theorem instrumental_variable_closed_from_evidence {C : CausalIgnorabilityPackage}
    (IV : InstrumentalVariablePackage C) (E : InstrumentalVariableEvidence IV) :
    InstrumentalVariableClosed IV := by
  exact And.intro E.exclusionRestrictionClosed (And.intro E.relevanceConditionClosed E.monotonicityClosed)

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse
