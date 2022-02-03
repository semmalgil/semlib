namespace PropLogic

inductive Wff : Type where
  | not (φ : Wff) : Wff
  | and (φ ψ : Wff) : Wff
  | or (φ ψ : Wff) : Wff
  | implies (φ ψ : Wff) : Wff
  | iff (φ ψ : Wff) : Wff

export Wff (not and or implies iff)

notation:max "¬" φ:40 => not φ
infixr:35 " ∧ " => and
infixr:30 " ∨ " => or
infix:25 " → " => implies
infix:20 " ↔ " => iff

inductive ListWff : Type where
  | list (φ : Wff) : ListWff
  | comma (Φ Ψ : ListWff) : ListWff

export ListWff (list comma)

prefix:15 "ls" => ListWff.list
infix:10 ", " => ListWff.comma

inductive Truth : Type where
  | true : Truth
  | false : Truth

export Truth (true false)

inductive ListTruth : Type where
  | list (t : Truth) : ListTruth
  | comma (T1 T2 : ListTruth) : ListTruth

export ListTruth (list comma)

prefix:15 "ls" => ListTruth.list
infix:10 ", " => ListTruth.comma

inductive ArrayTruth : Type where
  | array (T : ListTruth) : ArrayTruth
  | bar (A1 A2 : ArrayTruth) : ArrayTruth

export ArrayTruth (array bar)

prefix:5 "ar" => ArrayTruth.array
infix:0 " | " => ArrayTruth.bar

#check ar ls true, ls false | ar ls true, ls false

end PropLogic
