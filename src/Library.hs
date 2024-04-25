module Library where
import PdePreludat


data Gimnasta = Gimnasta {
    edad :: Number,
    peso :: Number,
    tonificacion :: Number
} deriving (Show, Eq)


---------------------------
-- Precalentamiento
---------------------------

gimnastaDePrueba :: Gimnasta
gimnastaDePrueba = Gimnasta { 
    peso = 89, 
    edad = 45, 
    tonificacion = 7
}

-- Aprovechamos la sintaxis de copiado (no cambia al gimnasta, lo copia)
bajarDePeso :: Number -> Gimnasta -> Gimnasta
bajarDePeso kilos gimnastaOriginal 
  = gimnastaOriginal { 
       peso = peso gimnastaOriginal - kilos
    }

-- Equivalente a esta otra definicion mas verbosa
bajarDePeso' :: Number -> Gimnasta -> Gimnasta
bajarDePeso' kilos gimnasta 
  = Gimnasta { 
      edad = edad gimnasta, 
      peso = peso gimnasta - kilos,
      tonificacion = tonificacion gimnasta
    }

tonificar :: Gimnasta -> Gimnasta
tonificar gimnasta = gimnasta { 
    tonificacion = tonificacion gimnasta + 1
    }

-------------------------------------
-- Punto 1: Gimnastas saludables
-------------------------------------

estaObeso :: Gimnasta -> Bool
estaObeso gimnasta = peso gimnasta > 100

estaSaludable :: Gimnasta -> Bool
estaSaludable gimnasta 
  = not (estaObeso gimnasta) && tonificacion gimnasta > 5 

---------------------------
-- Punto 2: Quemar calorías
---------------------------

quemarCalorias :: Number -> Gimnasta -> Gimnasta
quemarCalorias calorias gimnasta 
  | estaObeso gimnasta = bajarDePeso (calorias / 150) gimnasta 
  | not (estaObeso gimnasta) && calorias > 200 && edad gimnasta > 30 =
      bajarDePeso 1 gimnasta
  | otherwise = 
      bajarDePeso 
        (calorias / (peso gimnasta * edad gimnasta)) 
        gimnasta

-- Nuevos requerimientos

rutina1 :: Gimnasta -> Gimnasta
rutina1 = quemarCalorias 500.tonificar.quemarCalorias 200

rutina2 :: Number -> Gimnasta -> Gimnasta
rutina2 repeticiones = quemarCalorias (200 * repeticiones)
                            . tonificar . tonificar

rutina3 :: Gimnasta -> Gimnasta
rutina3 = rutina2 5 . rutina1 . rutina2 3 . rutina1