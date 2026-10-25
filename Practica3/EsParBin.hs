module EsParBin (esParBin) where

import Data.Bits

{-
Función: esParBin
Descripcion: Recibe un entero y regresa un bool, diciendo si es par o impar
Uso:esParBin 10 -> False
-}

esParBin :: Int -> Bool
esParBin n = (n .&. 1) == 0

