class Solution {
  func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

    var map: [Int: Int] = [:]
    var result = [0, 0]

    for i in 0..<nums.count {
      let num = nums[i]

      if let index_tar = map[num] {
        result = [index_tar, i]
      } else {

        let remaining = target - num
        map[remaining] = i
      }
    }

    return result
  }
}

func twoSum1() -> ([Int], [Int]) {
  let nums = [2, 7, 11, 15]
  let target = 9
  let sol = Solution()
  let result = sol.twoSum(nums, target)
  let expected = [0, 1]

  return (result, expected)
}

func twoSum2() -> ([Int], [Int]) {
  let nums = [3, 2, 4]
  let target = 6
  let sol = Solution()
  let result = sol.twoSum(nums, target)
  let expected = [1, 2]

  return (result, expected)
}

func twoSum3() -> ([Int], [Int]) {
  let nums = [3, 3]
  let target = 6
  let sol = Solution()
  let result = sol.twoSum(nums, target)
  let expected = [0, 1]

  return (result, expected)
}
