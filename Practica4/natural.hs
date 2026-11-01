
module Natural where 
import Auxiliar (Natural(..), multNat, sumaNat)

{- Ejercicio 1
Función: a_natural
Descripcion: Recibe un entero y lo regresa a su estructura de dato Natural
Uso: a_natural 0 -> Cero
-}

a_natural :: Int -> Natural
a_natural 0 = Cero
a_natural n = S (a_natural (n-1))

{- Ejercicio 3
Función: potenciaNat
Descripcion: Recibe dos naturales, eleva el primer numero natural a la potencia del segundo.
Uso: potenciaNat (S (S (S Cero))) (S (S Cero)) -> S (S (S (S (S (S (S (S (S Cero))))))))
-}

potenciaNat :: Natural -> Natural -> Natural
potenciaNat n Cero = S Cero
potenciaNat n (S m) = multNat n (potenciaNat n m)

{- Ejercicio 4
Función: facNat
Descripcion: Recibe un numero natural, devuelve su factorial
Uso: facNat (S (S (S Cero))) -> S (S (S (S (S (S Cero)))))
-}

facNat :: Natural -> Natural
facNat Cero = S Cero
facNat (S n) = multNat (S n) (facNat n)