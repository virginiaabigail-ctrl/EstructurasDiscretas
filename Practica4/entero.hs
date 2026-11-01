module Entero where 
import Auxiliar (Natural(..),Ent(..),mayorEnt, sumaEnt, restaEnt)

{- Ejercicio 2
Función: a_entero
Descripcion: Recibe un Natural y devuelve un entero
Uso: a_entero CeroEnt -> 0
-}

a_entero :: Natural -> Int
a_entero Cero = 0
a_entero (S n) = 1 + a_entero n

{- Ejercicio 5
Función: multiEnt
Descripcion: Recibe dos enteros y devuelve el producto o la multiplicación de estos.
Uso: multiEnt (Neg (Succ (Succ (Succ (Succ Zero))))) (Succ (Succ Zero)) -> Neg (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero))))))))
-}

multiEnt :: Ent -> Ent -> Ent
multiEnt CeroEnt _ = CeroEnt
multiEnt _ CeroEnt = CeroEnt

multiEnt (Suc n) (Suc m) =
    sumaEnt (Suc m) (multiEnt n (Suc m))

multiEnt (Suc n) (Neg m) =
    Neg (multiEnt (Suc n) m)

multiEnt (Neg n) (Suc m) =
    Neg (multiEnt n (Suc m))

multiEnt (Neg n) (Neg m) =
    multiEnt n m