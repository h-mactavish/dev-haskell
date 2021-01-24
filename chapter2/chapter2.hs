calcChange owed given =
  if given - owed > 0
    then given - owed
    else 0

calcChange1 owed given =
  if change > 0
    then change
    else 0
  where
    change = given - owed
