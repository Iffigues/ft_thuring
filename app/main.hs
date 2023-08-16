import System.Environment (getArgs)

maxNum :: [String] -> Maybe Int
maxNum ("-h":_) = Nothing
maxNum ("--help":_) = Nothing
maxNum args = if null args
                  then Nothing
                  else Just 3

main :: IO ()
main = do
  let abc = "my string"
  args <- getArgs
  case maxNum args of
    Nothing -> help
    Just n -> putStrLn $ "The maximum number is: " ++ show n
  putStrLn $ "Command line arguments: " ++ show args ++ abc
