esMultiploDeTres:: Int -> Bool
esMultiploDeTres num = 
    if mod num 3 == 0
        then True
        else False 

esMultiploDe:: Int -> Int -> Bool
esMultiploDe unNum otroNum =
    if mod unNum otroNum == 0
        then True
        else False

cubo:: Float -> Float
cubo num = num * num

area:: Float -> Float -> Float
area base altura = base * altura

esBisiesto:: Int -> Bool
esBisiesto anio =
    if esMultiploDe anio 100
        then False
        else if esMultiploDe anio 400 || esMultiploDe anio 4
            then True
            else False

celsiusToFahr:: Float -> Float
celsiusToFahr temp = (temp * (9/5)) + 32

fahrToCelsius:: Float -> Float
fahrToCelsius temp = (temp - 32) * (5/9)

haceFrioF:: Float -> Bool
haceFrioF temp =
    if fahrToCelsius temp < 8
        then True
        else False

mcm:: Int -> Int -> Float
mcm unNum otroNum = fromIntegral (unNum * otroNum) / fromIntegral (gcd unNum otroNum)

dispersion:: Int -> Int -> Int -> Int
dispersion primera segunda tercera = (max (max primera segunda) tercera) - (min (min primera segunda) tercera)

diasParejos:: Int -> Int -> Int -> Bool
diasParejos primera segunda tercera =
    if dispersion primera segunda tercera < 30
        then True
        else False

diasLocos:: Int -> Int -> Int -> Bool
diasLocos primera segunda tercera =
    if dispersion primera segunda tercera > 100
        then True
        else False

diasNormales:: Int -> Int -> Int -> Bool
diasNormales primera segunda tercera =
    if diasParejos primera segunda tercera || diasLocos primera segunda tercera
        then False
        else True

pesoPino:: Int -> Int
pesoPino altura =
    if altura <= 300
        then 3 * altura
        else 3 * 300 + 2 * (altura - 300)

esPesoUtil:: Int -> Bool
esPesoUtil peso =
    if peso > 400 && peso < 1000
        then True
        else False

sirvePino:: Int -> Bool
sirvePino altura = (esPesoUtil . pesoPino) altura

{-conseguirImpar:: Int -> Int
conseguirImpar it = (2 * it) + 1

esCuadradoPerfecto:: Int -> Bool
esCuadradoPerfecto num = -}