import .CeramicTypologyPackage

namespace HautevilleHouse
namespace AnthropologyArchaeologicalTheoryCanonicalLaneLean

structure RadiocarbonDatingPackage {P : StratigraphicPackage} (C : CeramicTypologyPackage P) where
  samples : List (String × Nat)
  calibrationCurve : String
  datesCalibrated : Prop
  bayesianModel : Prop

structure RadiocarbonDatingEvidence {P : StratigraphicPackage} {C : CeramicTypologyPackage P} (R : RadiocarbonDatingPackage C) where
  samplesClosed : R.samples.length ≥ 1
  datesCalibratedClosed : R.datesCalibrated
  bayesianModelClosed : R.bayesianModel

def RadiocarbonDatingClosed {P : StratigraphicPackage} {C : CeramicTypologyPackage P} (R : RadiocarbonDatingPackage C) : Prop :=
  R.datesCalibrated ∧ R.bayesianModel

theorem radiocarbon_dating_closed_from_evidence {P : StratigraphicPackage} {C : CeramicTypologyPackage P} (R : RadiocarbonDatingPackage C) (E : RadiocarbonDatingEvidence R) :
    RadiocarbonDatingClosed R := by
  exact And.intro E.datesCalibratedClosed E.bayesianModelClosed

end AnthropologyArchaeologicalTheoryCanonicalLaneLean
end HautevilleHouse