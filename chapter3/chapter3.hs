--Intro to lambda function

--Poor code

-- **

-- sumSquareOrSquareSum x y =
--   if sumSquare > squareSum
--     then sumSquare
--     else squareSum
--   where
--     sumSquare = x ^ 2 + y ^ 2
--     squareSum = (x + y) ^ 2

-- **

-- --A Better version
-- body sumSquare squareSum =
--   if sumSquare > squareSum
--     then sumSquare
--     else squareSum

-- sumSquareOrSquareSum x y = body (x ^ 2 + y ^ 2) ((x + y) ^ 2)

--Much Better practice using lambda function

-- sumSquareOrSquareSum x y =
--   ( \sumSquare squareSum ->
--       if sumSquare > squareSum
--         then sumSquare
--         else squareSum
--   )
--     (x ^ 2 + y ^ 2)
--     ((x + y) ^ 2)

--Using let to combine where and lambda

sumSquareOrSquareSum x y =
  let sumSquare = (x ^ 2 + y ^ 2)
      squareSum = (x + y) ^ 2
   in if sumSquare > squareSum
        then sumSquare
        else squareSum

--Overwrite function

overwrite x =
  let x = 2
   in let x = 3
       in let x = 4
           in x

--Overwrite using lambdas

overwrite2 x =
  ( \x ->
      ( \x ->
          (\x -> x) 4
      )
        3
  )
    2