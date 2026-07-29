import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure IdentificationStrategiesPackage {T : TreatmentAssignmentMechanismPackage} where
  backdoorCriterion : Prop
  frontdoorCriterion : Prop
  instrumentalVariable : Prop
  gFormula : Prop

structure IdentificationStrategiesEvidence {T : TreatmentAssignmentMechanismPackage}
    (I : IdentificationStrategiesPackage T) where
  backdoorCriterionClosed : I.backdoorCriterion
  frontdoorCriterionClosed : I.frontdoorCriterion
  instrumentalVariableClosed : I.instrumentalVariable
  gFormulaClosed : I.gFormula

def IdentificationStrategiesClosed {T : TreatmentAssignmentMechanismPackage}
    (I : IdentificationStrategiesPackage T) : Prop :=
  I.backdoorCriterion ∧ I.frontdoorCriterion ∧ I.instrumentalVariable ∧ I.gFormula

theorem identification_strategies_closed_from_evidence
    {T : TreatmentAssignmentMechanismPackage} (I : IdentificationStrategiesPackage T)
    (E : IdentificationStrategiesEvidence I) : IdentificationStrategiesClosed I := by
  exact And.intro E.backdoorCriterionClosed
    (And.intro E.frontdoorCriterionClosed
      (And.intro E.instrumentalVariableClosed E.gFormulaClosed))

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse
