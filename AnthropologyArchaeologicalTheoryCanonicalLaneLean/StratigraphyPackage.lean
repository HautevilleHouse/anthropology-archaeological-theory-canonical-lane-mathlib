import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyArchaeologicalTheoryCanonicalLaneLean

structure StratigraphyPackage where
  stratigraphicLayer : Type u
  artifactAssemblage : Type v
  depositionalContext : Type w
  layerSuperposition : Prop
  artifactProvenance : Prop
  contextIntegrity : Prop

structure StratigraphyEvidence (S : StratigraphyPackage) where
  layerSuperpositionClosed : S.layerSuperposition
  artifactProvenanceClosed : S.artifactProvenance
  contextIntegrityClosed : S.contextIntegrity

def StratigraphyClosed (S : StratigraphyPackage) : Prop :=
  S.layerSuperposition ∧ S.artifactProvenance ∧ S.contextIntegrity

theorem stratigraphy_closed_from_evidence (S : StratigraphyPackage) (E : StratigraphyEvidence S) :
    StratigraphyClosed S := by
  exact And.intro E.layerSuperpositionClosed
    (And.intro E.artifactProvenanceClosed E.contextIntegrityClosed)

end AnthropologyArchaeologicalTheoryCanonicalLaneLean
end HautevilleHouse