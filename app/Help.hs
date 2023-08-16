module Help (help) where

help :: IO ()
help = do
  let helper = "usage: ft_turing [-h] jsonfile input\n\n "++
               "positional arguments:\n"++
               "\tjsonfile json description of the machine\n\n"++
               "\tinput input of the machine\n\n"++
               "optional arguments:\n"++
               "\t-h, --help show this help message and exit\n"
  putStrLn helper
