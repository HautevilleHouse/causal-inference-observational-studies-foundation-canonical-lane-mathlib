import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CausalInferenceObservationalStudiesFoundationCanonicalLaneLean.CausalAdmissibleClass
import HautevilleHouse.CausalInferenceObservationalStudiesFoundationCanonicalLaneLean.CausalModels

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure BackdoorCriterionPackage {T Y C : Type} (data : ObservationalData T Y C) where
  adjustmentSet : List C
  conditionalExchangeability : Prop
  positivity : Prop
  identificationFormula : Prop
  criterionClosed : identificationFormula

structure BackdoorCriterionEvidence {T Y C : Type} {data : ObservationalData T Y C}
    (pkg : BackdoorCriterionPackage data) where
  conditionalExchangeabilityClosed : pkg.conditionalExchangeability
  positivityClosed : pkg.positivity
  identificationFormulaClosed : pkg.identificationFormula

def BackdoorCriterionClosed {T Y C : Type} {data : ObservationalData T Y C}
    (pkg : BackdoorCriterionPackage data) : Prop :=
  pkg.conditionalExchangeability ∧ pkg.positivity ∧ pkg.identificationFormula

theorem backdoor_criterion_closed_from_evidence {T Y C : Type} {data : ObservationalData T Y C}
    (pkg : BackdoorCriterionPackage data) (E : BackdoorCriterionEvidence pkg) :
    BackdoorCriterionClosed pkg := by
  exact And.intro E.conditionalExchangeabilityClosed
    (And.intro E.positivityClosed E.identificationFormulaClosed)

structure FrontdoorCriterionPackage {T Y C M : Type} (data : ObservationalData T Y C) where
  mediatorSet : List M
  noDirectEffect : Prop
  mediatorExchangeability : Prop
  positivity : Prop
  identificationFormula : Prop
  criterionClosed : identificationFormula

structure FrontdoorCriterionEvidence {T Y C M : Type} {data : ObservationalData T Y C}
    (pkg : FrontdoorCriterionPackage data) where
  noDirectEffectClosed : pkg.noDirectEffect
  mediatorExchangeabilityClosed : pkg.mediatorExchangeability
  positivityClosed : pkg.positivity
  identificationFormulaClosed : pkg.identificationFormula

def FrontdoorCriterionClosed {T Y C M : Type} {data : ObservationalData T Y C}
    (pkg : FrontdoorCriterionPackage data) : Prop :=
  pkg.noDirectEffect ∧ pkg.mediatorExchangeability ∧ pkg.positivity ∧ pkg.identificationFormula

theorem frontdoor_criterion_closed_from_evidence {T Y C M : Type} {data : ObservationalData T Y C}
    (pkg : FrontdoorCriterionPackage data) (E : FrontdoorCriterionEvidence pkg) :
    FrontdoorCriterionClosed pkg := by
  exact And.intro E.noDirectEffectClosed
    (And.intro E.mediatorExchangeabilityClosed
      (And.intro E.positivityClosed E.identificationFormulaClosed))

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse