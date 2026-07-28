import canonicalLaneMathlib.AdmissibleClass
import AnthropologyArchaeologicalTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyArchaeologicalTheoryCanonicalLaneLean

structure SettlementPatternPackage where
  spatialDistribution : Prop
  siteHierarchy : Prop
  catchmentAnalysis : Prop
  environmentalDeterminants : Prop

structure SettlementPatternEvidence (S : SettlementPatternPackage) where
  spatialDistributionClosed : S.spatialDistribution
  siteHierarchyClosed : S.siteHierarchy
  catchmentAnalysisClosed : S.catchmentAnalysis
  environmentalDeterminantsClosed : S.environmentalDeterminants

def SettlementPatternClosed (S : SettlementPatternPackage) : Prop :=
  S.spatialDistribution ∧ S.siteHierarchy ∧ S.catchmentAnalysis ∧ S.environmentalDeterminants

theorem settlement_pattern_closed_from_evidence (S : SettlementPatternPackage) (E : SettlementPatternEvidence S) :
    SettlementPatternClosed S := by
  exact And.intro E.spatialDistributionClosed
    (And.intro E.siteHierarchyClosed
      (And.intro E.catchmentAnalysisClosed E.environmentalDeterminantsClosed))

end AnthropologyArchaeologicalTheoryCanonicalLaneLean
end HautevilleHouse