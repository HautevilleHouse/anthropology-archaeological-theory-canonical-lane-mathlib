import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyArchaeologicalTheoryCanonicalLaneLean.StratigraphicIntegrity

namespace HautevilleHouse
namespace AnthropologyArchaeologicalTheoryCanonicalLaneLean

structure CuratorialEvidenceTerms (S : StratigraphicIntegrityPackage) where
  contextRecorded : S.contextPreservation
  layerStratified : S.layerUniqueness
  artifactAssociated : S.artifactAssociation
  depositionalCohort : S.depositionalContinuity
  integrityClosed : StratigraphicIntegrityClosed S

def StratigraphicIntegrityPackage.evidenceTerms
    (S : StratigraphicIntegrityPackage) (E : StratigraphicIntegrityEvidence S) :
    CuratorialEvidenceTerms S :=
  {
    contextRecorded := E.contextPreservationClosed
    layerStratified := E.layerUniquenessClosed
    artifactAssociated := E.artifactAssociationClosed
    depositionalCohort := E.depositionalContinuityClosed
    integrityClosed := stratigraphic_integrity_closed_from_evidence S E
  }

end AnthropologyArchaeologicalTheoryCanonicalLaneLean
end HautevilleHouse