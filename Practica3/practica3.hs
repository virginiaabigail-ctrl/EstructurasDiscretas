
{- 
Tipo de dato Plazo
Descripción: Indica si el plazo está expresado en días o meses
Uso: Dias 28 o Meses 1
-}

data Plazo = Dias Double | Meses Double
    deriving (Show, Eq)

{- 
Función auxiliar diasMeses
Descripción: Convierte días a meses, considerando meses de 28 días
Uso: diasMeses 28 = 1
-}

diasMeses :: Double -> Double
diasMeses x = x / 28

{- 
Función auxiliar montoFinal
Descripción: Calcula el monto final de una inversión
Uso: montoFinal 100 0.0609 28
-}

montoFinal :: Double -> Double -> Double -> Double
montoFinal vi i t = vi * (1 + i * (t / 360.0))

{- 
Función cetes
Descripción: Calcula el monto final de una inversión según el plazo en meses o días
Uso: cetes 100 (Dias 28) -> 100.47366666666666
     cetes 100 (Meses 1) -> 100.47366666666666
-}

cetes :: Double -> Plazo -> Double

cetes vi (Dias n) =
    if diasMeses n <= 1
    then montoFinal vi 0.0609 n
    else if diasMeses n <= 6.5
         then montoFinal vi 0.0691 n
         else if diasMeses n <= 13
              then montoFinal vi 0.0744 n
              else 0

cetes vi (Meses n) =
    if n <= 1
    then montoFinal vi 0.0609 28
    else if n <= 6
         then montoFinal vi 0.0691 182
         else if n <= 12
              then montoFinal vi 0.0744 364
              else 0


