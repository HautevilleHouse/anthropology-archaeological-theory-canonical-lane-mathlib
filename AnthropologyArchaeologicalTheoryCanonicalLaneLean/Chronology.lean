import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyArchaeologicalTheoryCanonicalLaneLean

structure ChronologyPackage where
  datingMethod : Type u
  absoluteDates : Prop
  relativeSequencing : Prop
  chronologicalConsistency : Prop
  errorMargins : Prop

structure ChronologyEvidence (C : ChronologyPackage) where
  absoluteDatesClosed : C.absoluteDates
  relativeSequencingClosed : C.relativeSequencing
  chronologicalConsistencyClosed : C.chronologicalConsistency
  errorMarginsClosed : C.errorMargins

def ChronologyClosed (C : ChronologyPackage) : Prop :=
  C.absoluteDates ∧ C.relativeSequencing ∧ C.chronologicalConsistency ∧ C.errorMargins

theorem chronology_closed_from_evidence (C : ChronologyPackage)
    (E : ChronologyEvidence C) : ChronologyClosed C := by
  exact And.intro E.absoluteDatesClosed
    (And.intro E.relativeSequencingClosed
      (And.intro E.chronologicalConsistencyClosed E.errorMarginsClosed))

end AnthropologyArchaeologicalTheoryCanonicalLaneLean
end HautevilleHouse