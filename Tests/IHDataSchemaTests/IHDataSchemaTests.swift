import XCTest
@testable import IHDataSchema

final class IHDataSchemaTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(IHDataSchema().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
