module FizzBuzz where 

fizzbuzz :: Int -> String 
fizzbuzz x = take (length fizzes - 1) fizzes
    where 
        xs = map is_fizz_buzz [1..x]
        is_fizz_buzz :: Int -> String 
        is_fizz_buzz x = if x `mod` 15 == 0 
                            then "FizzBuzz" 
                            else if x `mod` 3 == 0 
                                then "Fizz" else if x `mod` 5 == 0 
                                    then "Buzz" else show x
        fizzes = foldr (\acc x -> acc++"\n"++x) "" xs

