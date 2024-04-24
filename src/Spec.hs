module Spec where
import PdePreludat
import Library
import Test.Hspec

correrTests :: IO ()
correrTests = hspec $ do
    describe "Precalentamiento" $ do
        it "El gimnasta de prueba esta definido y tiene 45 años" $ do
           edad gimnastaDePrueba `shouldBe` 45
        it "El gimnasta de prueba esta definido y pesa 89 kilos" $ do
           peso gimnastaDePrueba `shouldBe` 89
        it "El gimnasta de prueba esta definido y su tonificacion es 7" $ do
           tonificacion gimnastaDePrueba `shouldBe` 7
        it "Cuando un gimnasta baja de peso queda con tantos kilos menos como se indique" $ do
           bajarDePeso 3 gimnastaDePrueba `shouldBe` gimnastaDePrueba {peso = 86}
        it "Cuando un gimnasta se tonifica aumenta en un punto su tonificacion" $ do
           tonificar gimnastaDePrueba `shouldBe` gimnastaDePrueba {tonificacion = 8}

    describe "Punto 1: Gimnastas saludables" $ do
        it "Un gimnasta que pesa más de 100 kilos es obeso" $ do
            estaObeso gimnastaDePrueba {peso = 101} `shouldBe` True
        it "Un gimnasta que pesa menos de 100 kilos no es obeso" $ do
            estaObeso gimnastaDePrueba {peso = 99} `shouldBe` False
        it "Un gimnasta que pesa 100 kilos no es obeso" $ do
            estaObeso gimnastaDePrueba {peso = 100} `shouldBe` False
        it "Un gimnasta con tonificación menor a 5 que no es obeso no está saludable" $ do
            estaSaludable (gimnastaDePrueba {tonificacion = 4, peso = 70}) `shouldBe` False
        it "Un gimnasta con tonificación mayor a 5 que no es obeso está saludable" $ do
            estaSaludable (gimnastaDePrueba {tonificacion = 6, peso = 70}) `shouldBe` True
        it "Un gimnasta con tonificación menor a 5 que es obeso no está saludable" $ do
            estaSaludable (gimnastaDePrueba {tonificacion = 4, peso = 110}) `shouldBe` False
        it "Un gimnasta con tonificación mayor a 5 que es obeso no está saludable" $ do
            estaSaludable (gimnastaDePrueba {tonificacion = 7, peso = 110}) `shouldBe` False

    describe "Punto 2: Quemar calorías" $ do
        it "Un gimnasta +30 que es obeso baja de peso proporcional a las calorías quemadas" $ do
            peso (quemarCalorias 300 (gimnastaDePrueba {edad = 31, peso = 110})) `shouldBe` 108
        it "Un gimnasta más joven que es obeso baja de peso proporcional a las calorías quemadas" $ do
            peso (quemarCalorias 300 (gimnastaDePrueba {edad = 29, peso = 110})) `shouldBe` 110 - 300/(29*110)
        it "Un gimnasta +30 que no es obeso baja 1 kilo cuando quema suficientes calorías" $ do
            peso (quemarCalorias 201 (gimnastaDePrueba {edad = 31, peso = 90})) `shouldBe` 89
        it "Un gimnasta más joven que no es obeso baja de peso en función a su peso y edad" $ do
            peso (quemarCalorias 201 (gimnastaDePrueba {edad = 29, peso = 80})) `shouldBe` 80 - 201/(29*80)
        it "Un gimnasta +30 que no es obeso baja de peso en función a su peso y edad cuando no quema suficientes calorías" $ do
            peso (quemarCalorias 150 (gimnastaDePrueba {edad = 31, peso = 90})) `shouldBe` 110 - 150/(31*90)