import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure TreatmentAssignmentMechanismPackage where
  propensityScore : Type u
  positivity : Prop
  ignorability : Prop
  overlap : Prop

structure TreatmentAssignmentMechanismEvidence (T : TreatmentAssignmentMechanismPackage) where
  positivityClosed : T.positivity
  ignorabilityClosed : T.ignorability
  overlapClosed : T.overlap

def TreatmentAssignmentMechanismClosed (T : TreatmentAssignmentMechanismPackage) : Prop :=
  T.positivity ∧ T.ignorability ∧ T.overlap

theorem treatment_assignment_mechanism_closed_from_evidence
    (T : TreatmentAssignmentMechanismPackage) (E : TreatmentAssignmentMechanismEvidence T) :
    TreatmentAssignmentMechanismClosed T := by
  exact And.intro E.positivityClosed (And.intro E.ignorabilityClosed E.overlapClosed)

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse
