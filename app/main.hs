import System.Environment (getArgs)

main :: IO ()
main = do
  args <- (length getArgs)
  putStrLn $ "Command line arguments: " ++ show args
