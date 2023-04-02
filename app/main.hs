import System.Environment (getArgs)

help :: IO ()
help = do
  let helper = "usage: ft_turing [-h] jsonfile input\n\n "++
               "positional arguments:\n"++
               "\tjsonfile json description of the machine\n\n"++
               "\tinput input of the machine\n\n"++
               "optional arguments:\n"++
               "\t-h, --help show this help message and exit\n"
  putStrLn helper

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
