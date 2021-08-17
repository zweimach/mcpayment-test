module Solution where

-- | naive1 is the first problem's naive solution.
-- It uses bruteforce to find the answer.
naive1 :: [Int] -> [Int]
naive1 nums = go [] nums
  where
    check n = all ((>= 0) . (n -)) nums
    go acc [] = acc
    go acc (x : xs)
        | check x = go (x : acc) xs
        | otherwise = go acc xs

-- | optimized1 is the first problem's optimized solution.
-- It searches the maximum element(s) in the list, which is the logical
-- answer to the first problem, e.g., `max - max == 0`.
optimized1 :: [Int] -> [Int]
optimized1 nums = filter (>= maximum nums) nums

-- | solution2 is the second problem's solution.
-- It uses bruteforce to filter the list.
solution2 :: [Int] -> Int -> [Int]
solution2 nums x = reverse $ go [] nums
  where
    check n = all ((/= x) . (n `div`)) nums
    go acc [] = acc
    go acc (y : ys)
        | check y = go (y : acc) ys
        | otherwise = go acc ys

-- | solution3 is the third problem's solution.
-- It filters the words with a certain length `x`.
solution3 :: String -> Int -> [String]
solution3 word x = filter (\s -> length s == x) $ words word
