import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AnthropologyArchaeologicalTheoryCanonicalLaneLean.ArchaeologyObjects
import HautevilleHouse.AnthropologyArchaeologicalTheoryCanonicalLaneLean.StratigraphicIntegrity
import HautevilleHouse.AnthropologyArchaeologicalTheoryCanonicalLaneLean.ArchaeologicalEvidenceTerms

namespace HautevilleHouse
namespace AnthropologyArchaeologicalTheoryCanonicalLaneLean

structure ArchaeologicalAnalyticCertificate (S : StratigraphicIntegrityPackage) where
  stratigraphyChain : Prop
  artifactTypology : Prop
  radiometricDating : Prop
  stratigraphyChainClosed : stratigraphyChain
  artifactTypologyClosed : artifactTypology
  radiometricDatingClosed : radiometricDating
  integrityEvidence : StratigraphicIntegrityEvidence S

def ArchaeologicalAnalyticCertificateClosed {S : StratigraphicIntegrityPackage}
    (C : ArchaeologicalAnalyticCertificate S) : Prop :=
  C.stratigraphyChain ∧ C.artifactTypology ∧ C.radiometricDating ∧ StratigraphicIntegrityClosed S

theorem archaeological_analytic_certificate_closed
    {S : StratigraphicIntegrityPackage} (C : ArchaeologicalAnalyticCertificate S) :
    ArchaeologicalAnalyticCertificateClosed C :=
  by
    exact And.intro C.stratigraphyChainClosed
      (And.intro C.artifactTypologyClosed
        (And.intro C.radiometricDatingClosed
          (stratigraphic_integrity_closed_from_evidence S C.integrityEvidence)))

end AnthropologyArchaeologicalTheoryCanonicalLaneLean
end HautevilleHouse