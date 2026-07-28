import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyArchaeologicalTheoryCanonicalLaneLean

structure ChronologyPackage {S : StratigraphyPackage} where
  radiocarbonDate : Type u
  calibrationCurve : Type v
  terminusPostQuem : Prop
  dateConsistency : Prop
  chronologicalOrder : Prop

structure ChronologyEvidence {S : StratigraphyPackage} (C : ChronologyPackage S) where
  terminusPostQuemClosed : C.terminusPostQuem
  dateConsistencyClosed : C.dateConsistency
  chronologicalOrderClosed : C.chronologicalOrder

def ChronologyClosed {S : StratigraphyPackage} (C : ChronologyPackage S) : Prop :=
  C.terminusPostQuem ∧ C.dateConsistency ∧ C.chronologicalOrder

theorem chronology_closed_from_evidence {S : StratigraphyPackage} (C : ChronologyPackage S) (E : ChronologyEvidence C) :
    ChronologyClosed C := by
  exact And.intro E.terminusPostQuemClosed
    (And.intro E.dateConsistencyClosed E.chronologicalOrderClosed)

end AnthropologyArchaeologicalTheoryCanonicalLaneLean
end HautevilleHouse