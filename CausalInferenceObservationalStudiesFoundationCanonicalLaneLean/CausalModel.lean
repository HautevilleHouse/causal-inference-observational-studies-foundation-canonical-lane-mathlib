import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

structure CausalModel where
  structuralEquations : Prop
  latentVariables : Prop
  doOperator : Prop
  identifiabilityAssumptions : Prop

structure CausalModelEvidence (M : CausalModel) where
  structuralEquationsClosed : M.structuralEquations
  latentVariablesClosed : M.latentVariables
  doOperatorClosed : M.doOperator
  identifiabilityAssumptionsClosed : M.identifiabilityAssumptions

def CausalModelClosed (M : CausalModel) : Prop :=
  M.structuralEquations ∧ M.latentVariables ∧ M.doOperator ∧ M.identifiabilityAssumptions

theorem causal_model_closed_from_evidence (M : CausalModel) (E : CausalModelEvidence M) :
    CausalModelClosed M := by
  exact And.intro E.structuralEquationsClosed
    (And.intro E.latentVariablesClosed
      (And.intro E.doOperatorClosed E.identifiabilityAssumptionsClosed))

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse