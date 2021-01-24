main :: IO ()
main = do
  print "What's you name"
  name <- getLine
  print ("Hi " ++ name)