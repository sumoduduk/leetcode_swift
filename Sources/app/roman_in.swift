import Foundation

class Solution3 {
  func romanToInt(_ s: String) -> Int {
    let symbol: [Character: Int] = [
      "I": 1,
      "V": 5,
      "X": 10,
      "L": 50,
      "C": 100,
      "D": 500,
      "M": 1000,
    ]

    var str = s

    str = str.replacingOccurrences(of: "CM", with: "DCCCC")
    str = str.replacingOccurrences(of: "CD", with: "CCCC")
    str = str.replacingOccurrences(of: "XC", with: "LXXXX")
    str = str.replacingOccurrences(of: "XL", with: "XXXX")
    str = str.replacingOccurrences(of: "IX", with: "VIIII")
    str = str.replacingOccurrences(of: "IV", with: "IIII")

    var total = 0

    for char in str {
      if let val = symbol[char] {

        total += val
      }
    }

    return total
  }
}

func romanToInt1() -> (Int, Int) {
  let input = "III"
  let out = 3
  let sol = Solution3()
  let result = sol.romanToInt(input)

  return (out, result)

}

func romanToInt2() -> (Int, Int) {
  let input = "LVIII"
  let out = 58

  let sol = Solution3()
  let result = sol.romanToInt(input)

  return (out, result)

}

func romanToInt3() -> (Int, Int) {
  let input = "MCMXCIV"

  let out = 1994

  let sol = Solution3()
  let result = sol.romanToInt(input)

  return (out, result)

}
