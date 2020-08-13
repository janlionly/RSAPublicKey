import XCTest
@testable import RSAPublicKey

final class RSAPublicKeyTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(RSAPublicKey().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
