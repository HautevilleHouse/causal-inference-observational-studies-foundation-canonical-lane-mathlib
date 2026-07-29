import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure IdentificationAssumptionsPackage where
  unconfoundedness : Prop
  overlap : Prop
  exclusionRestriction : Prop
  monotonicity : Prop

structure IdentificationAssumptionsEvidence (I : IdentificationAssumptionsPackage) where
  unconfoundednessClosed : I.unconfoundedness
  overlapClosed : I.overlap
  exclusionRestrictionClosed : I.exclusionRestriction
  monotonicityClosed : I.monotonicity

def IdentificationAssumptionsClosed (I : IdentificationAssumptionsPackage) : Prop :=
  I.unconfoundedness ∧ I.overlap ∧ I.exclusionRestriction ∧ I.monotonicity

theorem identification_assumptions_closed_from_evidence (I : IdentificationAssumptionsPackage) (E : IdentificationAssumptionsEvidence I) :
    IdentificationAssumptionsClosed I := by
  exact And.intro E.unconfoundednessClosed (And.intro E.overlapClosed (And.intro E.exclusionRestrictionClosed E.monotonicityClosed))

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse