import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  putStrLn $ "Command line arguments: " ++ show args
