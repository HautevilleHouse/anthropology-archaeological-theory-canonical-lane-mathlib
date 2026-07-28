import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyArchaeologicalTheoryCanonicalLaneLean

structure StratigraphyPackage where
  site : Type u
  layerSequence : site → List (site → Prop)
  depositionalOrder : Prop
  stratigraphicRelations : Prop
  layerIntegrity : Prop

structure StratigraphyEvidence (S : StratigraphyPackage) where
  depositionalOrderClosed : S.depositionalOrder
  stratigraphicRelationsClosed : S.stratigraphicRelations
  layerIntegrityClosed : S.layerIntegrity

def StratigraphyClosed (S : StratigraphyPackage) : Prop :=
  S.depositionalOrder ∧ S.stratigraphicRelations ∧ S.layerIntegrity

theorem stratigraphy_closed_from_evidence (S : StratigraphyPackage)
    (E : StratigraphyEvidence S) : StratigraphyClosed S := by
  exact And.intro E.depositionalOrderClosed
    (And.intro E.stratigraphicRelationsClosed E.layerIntegrityClosed)

end AnthropologyArchaeologicalTheoryCanonicalLaneLean
end HautevilleHouse