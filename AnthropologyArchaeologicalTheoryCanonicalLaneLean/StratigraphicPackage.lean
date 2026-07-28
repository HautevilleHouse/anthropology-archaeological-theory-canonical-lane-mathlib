import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyArchaeologicalTheoryCanonicalLaneLean

structure StratigraphicPackage where
  layerContinuity : Prop
  artifactAssemblageConsistency : Prop
  temporalSuccessionEstablished : Prop
  stratigraphicDisplacementAccounted : Prop

structure StratigraphicEvidence (S : StratigraphicPackage) where
  layerContinuityClosed : S.layerContinuity
  artifactAssemblageConsistencyClosed : S.artifactAssemblageConsistency
  temporalSuccessionEstablishedClosed : S.temporalSuccessionEstablished
  stratigraphicDisplacementAccountedClosed : S.stratigraphicDisplacementAccounted

def StratigraphicClosed (S : StratigraphicPackage) : Prop :=
  S.layerContinuity ∧ S.artifactAssemblageConsistency ∧
  S.temporalSuccessionEstablished ∧ S.stratigraphicDisplacementAccounted

theorem stratigraphic_closed_from_evidence (S : StratigraphicPackage) (E : StratigraphicEvidence S) :
    StratigraphicClosed S := by
  exact And.intro E.layerContinuityClosed
    (And.intro E.artifactAssemblageConsistencyClosed
      (And.intro E.temporalSuccessionEstablishedClosed
        E.stratigraphicDisplacementAccountedClosed))

end AnthropologyArchaeologicalTheoryCanonicalLaneLean
end HautevilleHouse