namespace PropLogic

inductive Truth : Type where
  | true : Truth
  | false : Truth

export Truth (true false)

inductive Wff : Type where
  | not (φ : Wff) : Wff
  | and (φ ψ : Wff) : Wff
  | or (φ ψ : Wff) : Wff
  | implies (φ ψ : Wff) : Wff
  | iff (φ ψ : Wff) : Wff

export Wff (not and or implies iff)

notation:max "¬" φ:40 => not φ
infixr:35 " ∧ "   => and
infixr:30 " ∨  "  => or
infixr:25 " → "   => implies
infixr:20 " ↔ "  => iff

end PropLogic
