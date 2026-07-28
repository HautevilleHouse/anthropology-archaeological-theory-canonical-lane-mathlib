import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyArchaeologicalTheoryCanonicalLaneLean

structure TypologyPackage where
  artifactClass : Type u
  typeDefinition : artifactClass → Prop
  classificationCriteria : Prop
  typeDistinctness : Prop
  technologicalAttributes : Prop

structure TypologyEvidence (T : TypologyPackage) where
  classificationCriteriaClosed : T.classificationCriteria
  typeDistinctnessClosed : T.typeDistinctness
  technologicalAttributesClosed : T.technologicalAttributes

def TypologyClosed (T : TypologyPackage) : Prop :=
  T.classificationCriteria ∧ T.typeDistinctness ∧ T.technologicalAttributes

theorem typology_closed_from_evidence (T : TypologyPackage)
    (E : TypologyEvidence T) : TypologyClosed T := by
  exact And.intro E.classificationCriteriaClosed
    (And.intro E.typeDistinctnessClosed E.technologicalAttributesClosed)

end AnthropologyArchaeologicalTheoryCanonicalLaneLean
end HautevilleHouse