module Main where

import Solution (naive1, optimized1, solution2, solution3)
import Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests =
    testGroup
        "mcpayment-test"
        [ test1
        , test2
        , test3
        ]

test1 :: TestTree
test1 =
    testGroup
        "problem1"
        [ testCase "naive1" $ naive1 [3, 1, 4, 2] @?= [4]
        , testCase "optimized1" $ optimized1 [3, 1, 4, 2] @?= [4]
        ]

test2 :: TestTree
test2 =
    testGroup
        "problem2"
        [ testCase "solution2" $
            solution2 [1, 2, 3, 4] 4 @?= [1, 2, 3]
        ]

test3 :: TestTree
test3 =
    testGroup
        "problem3"
        [ testCase "solution3" $
            solution3 "souvenir loud four lost" 4 @?= ["loud", "four", "lost"]
        ]
