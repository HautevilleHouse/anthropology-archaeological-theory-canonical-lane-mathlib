import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyArchaeologicalTheoryCanonicalLaneLean

structure CulturalEvolutionPackage where
  population : Type u
  culturalTraits : Prop
  transmissionMechanisms : Prop
  selectionPressures : Prop
  evolutionaryTrajectory : Prop

structure CulturalEvolutionEvidence (E : CulturalEvolutionPackage) where
  culturalTraitsClosed : E.culturalTraits
  transmissionMechanismsClosed : E.transmissionMechanisms
  selectionPressuresClosed : E.selectionPressures
  evolutionaryTrajectoryClosed : E.evolutionaryTrajectory

def CulturalEvolutionClosed (E : CulturalEvolutionPackage) : Prop :=
  E.culturalTraits ∧ E.transmissionMechanisms ∧ E.selectionPressures ∧ E.evolutionaryTrajectory

theorem cultural_evolution_closed_from_evidence (E : CulturalEvolutionPackage)
    (Ev : CulturalEvolutionEvidence E) : CulturalEvolutionClosed E := by
  exact And.intro Ev.culturalTraitsClosed
    (And.intro Ev.transmissionMechanismsClosed
      (And.intro Ev.selectionPressuresClosed Ev.evolutionaryTrajectoryClosed))

end AnthropologyArchaeologicalTheoryCanonicalLaneLean
end HautevilleHouse