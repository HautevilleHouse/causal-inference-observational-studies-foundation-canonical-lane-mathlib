import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure PotentialOutcomesPackage (A : AdmissibleClass) where
  potentialOutcomesDefined : Prop
  consistencyHolds : Prop
  identificationOfATE : Prop

structure PotentialOutcomesEvidence (A : AdmissibleClass) (P : PotentialOutcomesPackage A) where
  potentialOutcomesDefinedClosed : P.potentialOutcomesDefined
  consistencyHoldsClosed : P.consistencyHolds
  identificationOfATEClosed : P.identificationOfATE

def PotentialOutcomesClosed (A : AdmissibleClass) (P : PotentialOutcomesPackage A) : Prop :=
  P.potentialOutcomesDefined ∧ P.consistencyHolds ∧ P.identificationOfATE

theorem potential_outcomes_closed_from_evidence (A : AdmissibleClass) (P : PotentialOutcomesPackage A) (E : PotentialOutcomesEvidence A P) :
    PotentialOutcomesClosed A P := by
  exact And.intro E.potentialOutcomesDefinedClosed (And.intro E.consistencyHoldsClosed E.identificationOfATEClosed)

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse