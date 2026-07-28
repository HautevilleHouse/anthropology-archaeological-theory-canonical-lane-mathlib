import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyArchaeologicalTheoryCanonicalLaneLean

structure ArchaeologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ArchaeologyAdmittedObject where
  space : ArchaeologySpace
  culturalLayer : Prop
  artifactFound : Prop
  stratigraphyRecorded : Prop
  conclusion : artifactFound ∧ stratigraphyRecorded

structure ArchaeologyEndgameState where
  object : ArchaeologyAdmittedObject

def ArchaeologyWitnessClosed (O : ArchaeologyAdmittedObject) : Prop :=
  O.conclusion

end AnthropologyArchaeologicalTheoryCanonicalLaneLean
end HautevilleHouse