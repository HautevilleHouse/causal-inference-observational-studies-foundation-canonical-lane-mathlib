import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure EstimandPackage where
  ateDefined : Prop
  attDefined : Prop
  cateDefined : Prop
  estimandIdentified : Prop

structure EstimandEvidence (E : EstimandPackage) where
  ateDefinedClosed : E.ateDefined
  attDefinedClosed : E.attDefined
  cateDefinedClosed : E.cateDefined
  estimandIdentifiedClosed : E.estimandIdentified

def EstimandClosed (E : EstimandPackage) : Prop :=
  E.ateDefined ∧ E.attDefined ∧ E.cateDefined ∧ E.estimandIdentified

theorem estimand_closed_from_evidence (E : EstimandPackage) (Ev : EstimandEvidence E) :
    EstimandClosed E := by
  exact And.intro Ev.ateDefinedClosed (And.intro Ev.attDefinedClosed (And.intro Ev.cateDefinedClosed Ev.estimandIdentifiedClosed))

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse
