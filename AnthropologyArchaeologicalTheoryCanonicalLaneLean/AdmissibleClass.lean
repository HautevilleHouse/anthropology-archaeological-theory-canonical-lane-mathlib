import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyArchaeologicalTheoryCanonicalLaneLean

structure AdmittedSite where
  siteId : String
  excavationCompleted : Prop
  stratigraphyRecorded : Prop
  conclusion : excavationCompleted ∧ stratigraphyRecorded

structure AdmissibleClass where
  object : AdmittedSite
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.excavationCompleted ∧ A.object.stratigraphyRecorded) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AnthropologyArchaeologicalTheoryCanonicalLaneLean
end HautevilleHouse