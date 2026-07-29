import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure InstrumentalVariablesPackage where
  instrumentType : Type u
  relevanceCondition : Prop
  exclusionRestriction : Prop
  homogenousEffect : Prop
  noConfoundedInstrument : Prop

structure InstrumentalVariablesEvidence (IV : InstrumentalVariablesPackage) where
  relevanceClosed : IV.relevanceCondition
  exclusionClosed : IV.exclusionRestriction
  homogenousClosed : IV.homogenousEffect
  noConfoundedClosed : IV.noConfoundedInstrument

def InstrumentalVariablesClosed (IV : InstrumentalVariablesPackage) : Prop :=
  IV.relevanceCondition ∧ IV.exclusionRestriction ∧ IV.homogenousEffect ∧ IV.noConfoundedInstrument

theorem instrumental_variables_closed_from_evidence (IV : InstrumentalVariablesPackage) (E : InstrumentalVariablesEvidence IV) :
    InstrumentalVariablesClosed IV := by
  exact And.intro E.relevanceClosed (And.intro E.exclusionClosed (And.intro E.homogenousClosed E.noConfoundedClosed))

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse