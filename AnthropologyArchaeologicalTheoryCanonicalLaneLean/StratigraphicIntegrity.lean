import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyArchaeologicalTheoryCanonicalLaneLean.ArchaeologyObjects

namespace HautevilleHouse
namespace AnthropologyArchaeologicalTheoryCanonicalLaneLean

structure StratigraphicIntegrityPackage where
  contextPreservation : Prop
  layerUniqueness : Prop
  artifactAssociation : Prop
  depositionalContinuity : Prop

structure StratigraphicIntegrityEvidence (S : StratigraphicIntegrityPackage) where
  contextPreservationClosed : S.contextPreservation
  layerUniquenessClosed : S.layerUniqueness
  artifactAssociationClosed : S.artifactAssociation
  depositionalContinuityClosed : S.depositionalContinuity

def StratigraphicIntegrityClosed (S : StratigraphicIntegrityPackage) : Prop :=
  S.contextPreservation ∧ S.layerUniqueness ∧ S.artifactAssociation ∧ S.depositionalContinuity

theorem stratigraphic_integrity_closed_from_evidence
    (S : StratigraphicIntegrityPackage) (E : StratigraphicIntegrityEvidence S) :
    StratigraphicIntegrityClosed S := by
  exact And.intro E.contextPreservationClosed
    (And.intro E.layerUniquenessClosed
      (And.intro E.artifactAssociationClosed E.depositionalContinuityClosed))

end AnthropologyArchaeologicalTheoryCanonicalLaneLean
end HautevilleHouse