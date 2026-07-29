import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure PropensityScorePackage where
  treatmentAssignment : Type u
  covariates : Type v
  propensityScore : Type w
  balancingProperty : Prop
  positivityAssumption : Prop
  consistencyAssumption : Prop

structure PropensityScoreEvidence (P : PropensityScorePackage) where
  treatmentAssignmentClosed : P.treatmentAssignment
  covariatesClosed : P.covariates
  propensityScoreClosed : P.propensityScore
  balancingPropertyClosed : P.balancingProperty
  positivityAssumptionClosed : P.positivityAssumption
  consistencyAssumptionClosed : P.consistencyAssumption

def PropensityScoreClosed (P : PropensityScorePackage) : Prop :=
  P.treatmentAssignment ∧ P.covariates ∧ P.propensityScore ∧
  P.balancingProperty ∧ P.positivityAssumption ∧ P.consistencyAssumption

theorem propensity_score_closed_from_evidence
    (P : PropensityScorePackage) (E : PropensityScoreEvidence P) :
    PropensityScoreClosed P := by
  exact And.intro E.treatmentAssignmentClosed
    (And.intro E.covariatesClosed
      (And.intro E.propensityScoreClosed
        (And.intro E.balancingPropertyClosed
          (And.intro E.positivityAssumptionClosed
            E.consistencyAssumptionClosed))))

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse
