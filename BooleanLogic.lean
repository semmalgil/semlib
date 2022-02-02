prelude

inductive Bool : Type where
  | true : Bool
  | false : Bool
  | not (b : Bool) : Bool
  | and (x y : Bool) : Bool
  | or (x y : Bool) : Bool
  | implies (x y : Bool) : Bool
  | iff (x y : Bool) : Bool

export Bool (true false not and or implies iff)