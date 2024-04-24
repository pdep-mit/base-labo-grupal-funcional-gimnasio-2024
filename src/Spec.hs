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
            -- Cambiar esto por la consulta y el valor esperado real
            True `shouldBe` False
        it "Un gimnasta que pesa menos de 100 kilos no es obeso" $ do
            -- Cambiar esto por la consulta y el valor esperado real
            True `shouldBe` False
        it "Un gimnasta con tonificación menor a 5 que no es obeso no está saludable" $ do
            -- Cambiar esto por la consulta y el valor esperado real
            True `shouldBe` False
        it "Un gimnasta con tonificación mayor a 5 que no es obeso está saludable" $ do
            -- Cambiar esto por la consulta y el valor esperado real
            True `shouldBe` False
        it "Un gimnasta con tonificación menor a 5 que es obeso no está saludable" $ do
            -- Cambiar esto por la consulta y el valor esperado real
            True `shouldBe` False
        it "Un gimnasta con tonificación mayor a 5 que es obeso no está saludable" $ do
            -- Cambiar esto por la consulta y el valor esperado real
            True `shouldBe` False

    describe "Punto 2: Quemar calorías" $ do
        it "... descripcion del caso de prueba ..." $ do
            -- Cambiar esto por la consulta y el valor esperado real
            True `shouldBe` False