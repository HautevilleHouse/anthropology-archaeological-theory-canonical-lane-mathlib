import .RadiocarbonDatingPackage

namespace HautevilleHouse
namespace AnthropologyArchaeologicalTheoryCanonicalLaneLean

structure SettlementPatternPackage {P : StratigraphicPackage} {C : CeramicTypologyPackage P} (R : RadiocarbonDatingPackage C) where
  sites : List (String × Nat × Nat)
  hierarchy : Prop
  tradeNetworks : Prop
  populationDensity : Prop

structure SettlementPatternEvidence {P : StratigraphicPackage} {C : CeramicTypologyPackage P} {R : RadiocarbonDatingPackage C} (S : SettlementPatternPackage R) where
  sitesClosed : S.sites.length ≥ 1
  hierarchyClosed : S.hierarchy
  tradeNetworksClosed : S.tradeNetworks
  populationDensityClosed : S.populationDensity

def SettlementPatternClosed {P : StratigraphicPackage} {C : CeramicTypologyPackage P} {R : RadiocarbonDatingPackage C} (S : SettlementPatternPackage R) : Prop :=
  S.hierarchy ∧ S.tradeNetworks ∧ S.populationDensity

theorem settlement_pattern_closed_from_evidence {P : StratigraphicPackage} {C : CeramicTypologyPackage P} {R : RadiocarbonDatingPackage C} (S : SettlementPatternPackage R) (E : SettlementPatternEvidence S) :
    SettlementPatternClosed S := by
  exact And.intro E.hierarchyClosed (And.intro E.tradeNetworksClosed E.populationDensityClosed)

end AnthropologyArchaeologicalTheoryCanonicalLaneLean
end HautevilleHouse