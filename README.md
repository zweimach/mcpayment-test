# mcpayment-test

These are my solutions for the software engineer recruitment test at [MC Payment](https://www.mcpayment.id/).

To run the tests:

```
cabal test
```

## Question 1

We have an array of integers called `nums`, write a function to return all numbers
(in a form of an array of integers) that when subtracted by any of integers in
`nums` doesn't return number that is `< 0` for example : `nums = [3, 1, 4, 2]`,
your output should be : `[4]`, because when `4` is subtracted by `3` or `1` or `4`
or `2` doesn't return number that is `< 0`.

## Question 2

We have an array of integers called `nums` and an integer called `x`, write a function
to return all numbers (in a form of an array of integers) that when divided by any
of the integers in `nums` doesn't return `x` for example : `nums = [1, 2, 3, 4]` and
`x = 4`, your output should be : `[1, 2, 3]`, because only `4` divided by `1` is `4` (`x`).

## Question 3

We have a string called `word` and an integer called `x`, write a function to return
an array of strings containing all strings that has length `x`. for example :
`word = "souvenir loud four lost"` and `x = 4`, your output should be
`["loud", "four", "lost"]` because those strings has length of `4`.
