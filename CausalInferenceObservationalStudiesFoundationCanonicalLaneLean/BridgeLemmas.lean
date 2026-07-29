import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (A.object : CausalAdmittedObject).conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact (A.object : CausalAdmittedObject).conclusion

end CausalInferenceObservationalStudiesFoundationCanonicalLaneLean
end HautevilleHouse