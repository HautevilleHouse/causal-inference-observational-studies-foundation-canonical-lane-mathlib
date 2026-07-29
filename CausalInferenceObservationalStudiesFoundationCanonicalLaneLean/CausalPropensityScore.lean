import HautevilleHouse.CausalInferenceObservationalStudiesFoundationCanonicalLaneLean.CausalIgnorabilityIdentification

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure PropensityScorePackage {C : CausalIgnorabilityPackage} where
  propensityScore : Type
  balancingProperty : Prop
  inverseProbabilityWeighting : Prop

structure PropensityScoreEvidence {C : CausalIgnorabilityPackage}
    (P : PropensityScorePackage C) where
  balancingPropertyClosed : P.balancingProperty
  inverseProbabilityWeightingClosed : P.inverseProbabilityWeighting

def PropensityScoreClosed {C : CausalIgnorabilityPackage}
    (P : PropensityScorePackage C) : Prop :=
  P.balancingProperty ∧ P.inverseProbabilityWeighting

theorem propensity_score_closed_from_evidence {C : CausalIgnorabilityPackage}
    (P : PropensityScorePackage C) (E : PropensityScoreEvidence P) :
    PropensityScoreClosed P := by
  exact And.intro E.balancingPropertyClosed E.inverseProbabilityWeightingClosed

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse
