class Solution1 {
  func isPalindrome(_ x: Int) -> Bool {
    var res = true

    if x < 0 {
      res = false
    }

    let str = String(x)
    let arr = str.compactMap {
      return Int(String($0))
    }

    var (L, R) = (0, arr.count - 1)

    while L < R {
      if arr[L] == arr[R] {
        L += 1
        R -= 1
      } else {
        res = false
        break
      }
    }

    return res
  }
}

func isPalindrome1() -> (Bool, Bool) {
  let input = 121
  let out = true
  let sol = Solution1()
  let resullt = sol.isPalindrome(input)
  return (resullt, out)
}

func isPalindrome2() -> (Bool, Bool) {
  let input = -121
  let out = false
  let sol = Solution1()
  let resullt = sol.isPalindrome(input)
  return (resullt, out)
}

func isPalindrome3() -> (Bool, Bool) {
  let input = 10
  let out = false
  let sol = Solution1()
  let resullt = sol.isPalindrome(input)
  return (resullt, out)
}
