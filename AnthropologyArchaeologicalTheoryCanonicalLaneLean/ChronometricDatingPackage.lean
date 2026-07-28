import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyArchaeologicalTheoryCanonicalLaneLean

structure ChronometricDatingPackage where
  radiometricDatesAvailable : Prop
  dendrochronologicalCalibration : Prop
  stratigraphicContextCrossChecks : Prop
  errorMarginBounded : Prop

structure ChronometricDatingEvidence (C : ChronometricDatingPackage) where
  radiometricDatesAvailableClosed : C.radiometricDatesAvailable
  dendrochronologicalCalibrationClosed : C.dendrochronologicalCalibration
  stratigraphicContextCrossChecksClosed : C.stratigraphicContextCrossChecks
  errorMarginBoundedClosed : C.errorMarginBounded

def ChronometricDatingClosed (C : ChronometricDatingPackage) : Prop :=
  C.radiometricDatesAvailable ∧ C.dendrochronologicalCalibration ∧
  C.stratigraphicContextCrossChecks ∧ C.errorMarginBounded

theorem chronometric_dating_closed_from_evidence (C : ChronometricDatingPackage) (E : ChronometricDatingEvidence C) :
    ChronometricDatingClosed C := by
  exact And.intro E.radiometricDatesAvailableClosed
    (And.intro E.dendrochronologicalCalibrationClosed
      (And.intro E.stratigraphicContextCrossChecksClosed
        E.errorMarginBoundedClosed))

end AnthropologyArchaeologicalTheoryCanonicalLaneLean
end HautevilleHouse