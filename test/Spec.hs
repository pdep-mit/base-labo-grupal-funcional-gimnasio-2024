import Library
import Test.Hspec

main :: IO ()
main = hspec $ do
    describe "Precalentamiento" $ do
        it "El ejercicio relax no impacta al gimnasta" $ do
           relax 60 gimnastaDePrueba `shouldBe` gimnastaDePrueba

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