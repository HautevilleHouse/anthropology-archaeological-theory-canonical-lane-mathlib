import .StratigraphicEvidence

namespace HautevilleHouse
namespace AnthropologyArchaeologicalTheoryCanonicalLaneLean

structure CeramicTypologyPackage (P : StratigraphicPackage) where
  diagnosticTypes : List String
  typeFrequency : List (String × Nat)
  temporalMarkers : Prop
  culturalAffiliation : Prop

structure CeramicTypologyEvidence {P : StratigraphicPackage} (C : CeramicTypologyPackage P) where
  diagnosticTypesClosed : C.diagnosticTypes.length ≥ 1
  temporalMarkersClosed : C.temporalMarkers
  culturalAffiliationClosed : C.culturalAffiliation

def CeramicTypologyClosed {P : StratigraphicPackage} (C : CeramicTypologyPackage P) : Prop :=
  C.temporalMarkers ∧ C.culturalAffiliation

theorem ceramic_typology_closed_from_evidence {P : StratigraphicPackage} (C : CeramicTypologyPackage P) (E : CeramicTypologyEvidence C) :
    CeramicTypologyClosed C := by
  exact And.intro E.temporalMarkersClosed E.culturalAffiliationClosed

end AnthropologyArchaeologicalTheoryCanonicalLaneLean
end HautevilleHouse