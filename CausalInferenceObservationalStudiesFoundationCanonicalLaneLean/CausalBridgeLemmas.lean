import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CausalInferenceObservationalStudiesFoundationCanonicalLaneLean.CausalInferenceAdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.causalEffectIdentified

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse
