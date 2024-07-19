import XCTest

@testable import app

final class appTests: XCTestCase {
  func testTwoSum1() {
    let (result, target) = twoSum1()

    XCTAssertEqual(result, target)
  }

  func testTwoSum2() {
    let (result, target) = twoSum2()

    XCTAssertEqual(result, target)
  }

  func testTwoSum3() {
    let (result, target) = twoSum3()

    XCTAssertEqual(result, target)
  }

  func testPalindrome1() {

    let (result1, target1) = isPalindrome1()

    XCTAssertEqual(result1, target1)

    let (result2, target2) = isPalindrome2()

    XCTAssertEqual(result2, target2)

    let (result3, target3) = isPalindrome3()

    XCTAssertEqual(result3, target3)
  }

  func testIsRoman() {

    let (result1, target1) = romanToInt1()

    XCTAssertEqual(result1, target1)

    let (result2, target2) = romanToInt2()

    XCTAssertEqual(result2, target2)

    let (result3, target3) = romanToInt3()

    XCTAssertEqual(result3, target3)

  }

}
