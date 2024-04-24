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

-- 1a. Declarar la constante gimnastaDePrueba que debería ser de tipo Gimnasta
-- para usarlo desde las pruebas (Spec.hs) y/o desde la consola
gimnastaDePrueba :: Gimnasta
gimnastaDePrueba = undefined

-- 1b. Definir la funcion bajarDePeso que haga que un gimnasta baje tantos kilos
-- como se indique por parametro
bajarDePeso :: Number -> Gimnasta -> Gimnasta
bajarDePeso kilos gimnasta = undefined

-- 1c. Definir la funcion tonificar que haga que un gimnasta suba su tonificacion
-- en un punto
tonificar :: Gimnasta -> Gimnasta
tonificar gimnasta = undefined

-------------------------------------
-- Punto 1: Gimnastas saludables
-------------------------------------

estaObeso :: Gimnasta -> Bool 
estaObeso = undefined

estaSaludable :: Gimnasta -> Bool
estaSaludable = undefined

---------------------------
-- Punto 2: Quemar calorías
---------------------------

quemarCalorias :: Number -> Gimnasta -> Gimnasta
quemarCalorias = undefined
