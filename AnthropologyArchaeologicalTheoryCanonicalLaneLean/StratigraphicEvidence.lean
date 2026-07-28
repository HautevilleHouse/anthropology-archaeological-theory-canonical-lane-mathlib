import .AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyArchaeologicalTheoryCanonicalLaneLean

structure StratigraphicPackage where
  site : String
  excavationMethod : String
  stratigraphicUnits : List String
  relationshipsDefined : Prop
  chronologyEstablished : Prop

structure StratigraphicEvidence (P : StratigraphicPackage) where
  excavationMethodClosed : P.excavationMethod = "standard"
  stratigraphicUnitsClosed : P.stratigraphicUnits.length ≥ 1
  relationshipsDefinedClosed : P.relationshipsDefined
  chronologyEstablishedClosed : P.chronologyEstablished

def StratigraphicClosed (P : StratigraphicPackage) : Prop :=
  P.relationshipsDefined ∧ P.chronologyEstablished

theorem stratigraphic_closed_from_evidence (P : StratigraphicPackage) (E : StratigraphicEvidence P) :
    StratigraphicClosed P := by
  exact And.intro E.relationshipsDefinedClosed E.chronologyEstablishedClosed

end AnthropologyArchaeologicalTheoryCanonicalLaneLean
end HautevilleHouse