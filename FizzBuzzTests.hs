module FizzBuzzTests where 

import Test.Hspec --https://hspec.github.io/
import Text.Printf (printf) 
import FizzBuzz 

test_fizz_buzz :: String -> Int -> String -> Spec 
test_fizz_buzz msg upto expected = 
    it (printf msg) $ fizzbuzz upto `shouldBe` expected 

main :: IO ()
main = hspec $ do 
    describe "fizzbuzz tests" $ do 
        test_fizz_buzz "should return 1" 1 "1"
        test_fizz_buzz "should return ints" 2 "1\n2"
        test_fizz_buzz "should have 1 fizz" 3 "1\n2\nFizz"
        test_fizz_buzz "fizzbuzz upto 4" 4 "1\n2\nFizz\n4"
        test_fizz_buzz "should have 1 buzz" 5 "1\n2\nFizz\n4\nBuzz"
        test_fizz_buzz "fizzbuzz upto 6 (2 fizz)" 6 "1\n2\nFizz\n4\nBuzz\nFizz"
        test_fizz_buzz "should have 2 buzz" 10 "1\n2\nFizz\n4\nBuzz\nFizz\n7\n8\nFizz\nBuzz"
        test_fizz_buzz "fizzbuzz upto 15 (1 fizz buzz)" 15 "1\n2\nFizz\n4\nBuzz\nFizz\n7\n8\nFizz\nBuzz\n11\nFizz\n13\n14\nFizzBuzz"