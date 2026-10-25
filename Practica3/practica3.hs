
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

{- 
Función auxiliar m
Descripción: Recibe un monto inicial y un monto final y calcula la diferencia, que representa el rendimiento bruto
Uso: m 50.50 50 = 0.50
-}

m :: Double -> Double -> Double
m x y = x - y


{- 
Función mensajeCetes
Descripción: Recibe un monto inicial y un plazo expresado en días o meses y devuelve un mensaje con el plazo, el rendimiento bruto
y el monto total de la inversión
Uso: mensajeCetes 100 ( Dias 28) -> "Despues de 28 dias, obtuve 0.47366666666665935 de rendimiento bruto sin asumir ningun riesgo crediticio. El monto total de mi inversion es 100.47366666666666"
     mensajeCetes 100 (Meses 1) -> "Despues de 28 dias, obtuve 0.47366666666665935 de rendimiento bruto sin asumir ningun riesgo crediticio. El monto total de mi inversion es 100.47366666666666"
-}

mensajeCetes :: Double -> Plazo -> String

mensajeCetes x (Dias n) =
    "Despues de " ++ show (round n) ++
    " dias, obtuve " ++
    show (m (cetes x (Dias n)) x) ++
    " de rendimiento bruto sin asumir ningun riesgo crediticio. " ++
    "El monto total de mi inversion es " ++
    show (cetes x (Dias n))

mensajeCetes x (Meses n) =
    "Despues de " ++ show (round n) ++
    " meses, obtuve " ++
    show (m (cetes x (Meses n)) x) ++
    " de rendimiento bruto sin asumir ningun riesgo crediticio. " ++
    "El monto total de mi inversion es " ++
    show (cetes x (Meses n))


{-
Función negativos
Descripción: Recibe una lista de enteros y devuelve un número que diga cuantos números negativos contiene la lista
Uso: negativos [ -4, -2, 4 , 6 , -4] = -> 3
-}

negativos :: [Int] -> Int
negativos list = sum [1 | x <- list, x < 0]

{- Función soloPares
Descripción: Recibe una lista de  enteros y devuelve una lista que contiene solo los números pares de la lista original
Uso: soloPares [9, 7, 2,4] -> [2,4]
-}

soloPares :: [Int] -> [Int]
soloPares lista = [x | x <- lista, x `mod` 2 == 0]


