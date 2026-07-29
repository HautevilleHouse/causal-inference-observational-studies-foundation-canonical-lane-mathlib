import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure CausalAdmittedObject where
  population : Type u
  treatment : Type v
  outcome : Type w
  covariates : Type x
  ignorability : Prop
  positivity : Prop
  consistency : Prop
  conclusion : Prop

structure IdentificationPackage where
  ignorabilityAssumption : Prop
  positivityAssumption : Prop
  consistencyAssumption : Prop
  identificationResult : Prop

structure IdentificationEvidence (I : IdentificationPackage) where
  ignorabilityClosed : I.ignorabilityAssumption
  positivityClosed : I.positivityAssumption
  consistencyClosed : I.consistencyAssumption
  identificationResultClosed : I.identificationResult

def IdentificationClosed (I : IdentificationPackage) : Prop :=
  I.ignorabilityAssumption ∧ I.positivityAssumption ∧ I.consistencyAssumption ∧ I.identificationResult

theorem identification_closed_from_evidence (I : IdentificationPackage) (E : IdentificationEvidence I) :
    IdentificationClosed I := by
  exact And.intro E.ignorabilityClosed (And.intro E.positivityClosed (And.intro E.consistencyClosed E.identificationResultClosed))

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse
