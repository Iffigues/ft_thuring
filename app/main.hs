import System.Environment (getArgs)
import Help

maxNum :: [String] -> Maybe Int
maxNum ("-h":_) = Nothing
maxNum ("--help":_) = Nothing
maxNum args = if null args
                  then Nothing
                  else Just (length args)

main :: IO ()
main = do
  let abc = "my string"
  args <- getArgs
  case maxNum args of
    Nothing -> help
    Just n  -> if n == 2
                  then putStrLn "The maximum number is 0"
                  else help  
