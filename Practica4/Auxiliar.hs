
module Auxiliar  where


{- 
Auxiliar Naturales
-}


data Natural = Cero | S Natural deriving (Eq, Show)


{- Auxiliar 1 ejercicio 3 y 4
Función: sumaNat
Descripcion: Recibe dos naturales y devuelve la suma de estos
Uso: sumaNat cero (S Cero) -> (S Cero)
-}
sumaNat :: Natural -> Natural -> Natural
sumaNat Cero m = m
sumaNat (S n) m = S (sumaNat n m)

{- Auxiliar 2 ejercicio 3 y 4
Función: multNat
Descripcion: Recibe dos naturales y devuelve el producto de estos
Uso: multNat cero (S Cero) -> Cero
-}

multNat :: Natural -> Natural -> Natural
multNat Cero m = Cero
multNat (S n) m = sumaNat m (multNat n m)


{- 
Auxiliar Enteros
-}

data Ent = CeroEnt | Suc Ent | Neg Ent
    deriving (Eq, Show)


{- Auxiliar 1 ejercicio 5
Función: sumaEnt
Descripcion: Recibe dos enteros y devuelve la suma de estos
Uso: sumaEnt ceroEnt (Suc CeroEnt) -> (Suc CeroEnt)
-}

sumaEnt :: Ent -> Ent -> Ent
sumaEnt CeroEnt (Suc m) = (Suc m)
sumaEnt CeroEnt (Neg m) = (Neg m)
sumaEnt (Suc n) CeroEnt = (Suc n)
sumaEnt (Neg n) CeroEnt = (Neg n)
sumaEnt (Suc n) (Suc m) = Suc(sumaEnt n (Suc m))
sumaEnt (Neg n) (Neg m) = Neg (sumaEnt n m)
sumaEnt (Suc n) (Neg m) = if (Suc n)==m then CeroEnt else restaEnt (Suc n) m
sumaEnt (Neg n) (Suc m) = if n==(Suc m) then CeroEnt else restaEnt (Suc m) n

{- Auxiliar 2 ejercicio 5
Función: restaEnt
Descripcion: Recibe dos enteros y devuelve la resta de estos
Uso: restaEnt ceroEnt (Suc CeroEnt) -> Neg (Suc CeroEnt)
-}

restaEnt :: Ent -> Ent -> Ent
restaEnt (Suc n) CeroEnt = (Suc n)
restaEnt (Neg n) CeroEnt = (Neg n)
restaEnt CeroEnt (Neg m) = m
restaEnt CeroEnt (Suc m) = Neg (Suc m)
restaEnt (Suc n) (Suc m) = if ((Suc n) == (Suc m)) then CeroEnt else if (mayorEnt (Suc n) (Suc m)) then restaEnt n m else Neg (restaEnt m n)
restaEnt (Neg n) (Neg m) = sumaEnt (Neg n) m
restaEnt (Suc n) (Neg m) = sumaEnt (Suc n) m
restaEnt (Neg n) (Suc m) = Neg (Suc (sumaEnt n m))

{- Auxiliar 3 ejercicio 5
Función: mayorEnt
Descripcion: Recibe dos enteros y devuelve True o False dependiendo de si el rpimero es mayor que el otro
Uso: mayorEnt (Suc CeroEnt) CeroEnt = True
-}

mayorEnt :: Ent -> Ent -> Bool
mayorEnt (Suc n) CeroEnt = True
mayorEnt CeroEnt (Suc m) = False
mayorEnt (Neg n) CeroEnt = False
mayorEnt CeroEnt (Neg m) = True
mayorEnt (Neg n) (Suc m) = False
mayorEnt (Suc n) (Neg m) = True
mayorEnt (Suc n) (Suc m) = mayorEnt n m
mayorEnt (Neg n) (Neg m) = not (mayorEnt n m)


