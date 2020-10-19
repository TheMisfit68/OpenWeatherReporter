import XCTest
@testable import WeatherReporter

final class WeatherReporterTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(WeatherReporter().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
