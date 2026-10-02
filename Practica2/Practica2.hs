{- Ejercicio 2
    Función: reconversion
    Descripción: Va a dividir el parametro dado entre mil
    Uso: reconversion 34 -> 0.034
-}

reconversion :: Double -> Double
reconversion x = x / 1000

{-Ejercicio 3
    Función: cashback
    Descripción: Va a calcular el 10% del parámetro dado
    Uso: cashback 23455 -> 2345.5
-}

cashback :: Double -> Double
cashback w = w * 0.10

{-Ejercicio 4
    Función: cashbackMonto
    Descripción: Va a multiplicar el primer parámetro dado por el segundo parámetro
    Uso: cashbackMonto 23455 0.10 -> 2345.5
-}

cashbackMonto :: Double -> Double -> Double
cashbackMonto puntos valor = puntos * valor

{-Ejercicio 5
    Función: minutosHoras
    Descripción: Recibe un parámetro dado en minutos y lo convierte a horas
    Uso: minutosHoras 65-> 1 hora y 5 minutos
-}

minutosHoras :: Int -> String
minutosHoras min = show (min `div` 60) ++ " hora y " ++ show (min `mod` 60) ++ " minutos"

{-Ejercicio 6
    Función: esEstafa
    Descripción: Determina si el cliente hizo una estafa en la transacción
    Uso: esEstafa 500 1000 500 500 -> False
-}

esEstafa :: Double -> Double -> Double -> Double -> Bool
esEstafa costoTotal billeteGrande billeteJusto cambio = 
    if cambio < (billeteGrande-costoTotal) 
    then True
    else False

{-Ejercicio 7
    Función: esDescendente
    Descripción: Determina si los parámetros recibidos estan en orden descendente
    Uso: esDescendente 10 9 8 10 -> False
-}

esDescendente :: Double -> Double -> Double -> Double -> Bool
esDescendente x y z w =
    if x > y && y > z && z > w
    then True
    else False

{-Ejercicio 8
    Función: imc
    Descripción: Determina si los parámetros recibidos estan en orden descendente
    Uso: imc 53.5 161 -> "normal"
-}

imc :: Double -> Double -> String
imc peso estatura =

    if estatura > 3

    then if peso / ((estatura / 100) * (estatura / 100)) < 18.5
        then "peso"
        else if peso / ((estatura / 100) * (estatura / 100)) < 25
            then "normal"
            else if peso / ((estatura / 100) * (estatura / 100)) < 30
                then "sobrepeso"
                else "obesidad"
    
    else if peso / (estatura * estatura) < 18.5
        then "peso"
        else if peso / (estatura * estatura) < 25
            then "normal"
            else if peso / (estatura * estatura) < 30
                then "sobrepeso"
                else "obesidad"

    
    
