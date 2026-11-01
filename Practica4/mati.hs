data Matri = Mati | Cont Matri deriving (Eq, Show)


{- Ejercicio 6
Función: mayorIgual
Descripcion: Recibe dos matrioskas, las compara y devuelve True o False dependiendo de si es mayor igual o no es mayor o igual
Uso: mayorIgual Mati Mati -> True
-}

mayorIgual :: Matri -> Matri -> Bool
mayorIgual Mati Mati = True
mayorIgual Mati (Cont m) = False
mayorIgual (Cont m) Mati = True

mayorIgual (Cont m) (Cont n) =
    mayorIgual m n

{- Ejercicio 7
Función: aplana
Descripcion: Recibe una matrioska y devuelve una lista de todas las matrioskas que la componen
Uso: aplana Mati -> [Mati]
-}

aplana :: Matri -> [Matri]
aplana Mati = [Mati]
aplana m@(Cont n) = m : aplana n
