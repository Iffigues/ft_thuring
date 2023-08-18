import qualified Data.ByteString.Lazy as B
import Data.Aeson

readJSONFile :: FilePath -> IO (Maybe Value)
readJSONFile path = do
    contents <- B.readFile path
    return $ decode contents