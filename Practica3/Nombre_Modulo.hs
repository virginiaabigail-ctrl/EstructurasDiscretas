import Data.Bits

{-Es par o no es par? en binario-}
esParBin :: Int -> Bool
esParBin n = (n.&.1) == 0
