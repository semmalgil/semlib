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

section
  variable (φ ψ : Wff)
  
  #check ¬φ
  #check φ ∧ ψ
  #check φ ∨ ψ
  #check φ → ψ
  #check φ ↔ ψ
end

inductive ListWff : Type where
  | toList (φ : Wff) : ListWff
  | cons (Φ Ψ : ListWff) : ListWff

export ListWff (toList cons)

infixr:67 " :: " => ListWff.cons

section
  variable (φ ψ χ : Wff)
  
  #check toList φ
  #check toList φ :: toList ψ
  #check toList φ :: toList ψ :: toList χ
end

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
