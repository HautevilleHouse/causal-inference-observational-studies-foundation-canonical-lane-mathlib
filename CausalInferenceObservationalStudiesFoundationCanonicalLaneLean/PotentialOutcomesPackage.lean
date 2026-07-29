import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure PotentialOutcomesPackage where
  unitType : Type u
  treatmentType : Type v
  outcomeType : Type w
  potentialOutcomes : unitType → treatmentType → outcomeType
  observedOutcome : unitType → treatmentType → outcomeType
  consistencyAssumption : Prop
  positedExchangeability : Prop
  positivityAssumption : Prop

structure PotentialOutcomesEvidence (P : PotentialOutcomesPackage) where
  consistencyClosed : P.consistencyAssumption
  exchangeabilityClosed : P.positedExchangeability
  positivityClosed : P.positivityAssumption

def PotentialOutcomesClosed (P : PotentialOutcomesPackage) : Prop :=
  P.consistencyAssumption ∧ P.positedExchangeability ∧ P.positivityAssumption

theorem potential_outcomes_closed_from_evidence (P : PotentialOutcomesPackage) (E : PotentialOutcomesEvidence P) :
    PotentialOutcomesClosed P := by
  exact And.intro E.consistencyClosed (And.intro E.exchangeabilityClosed E.positivityClosed)

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse