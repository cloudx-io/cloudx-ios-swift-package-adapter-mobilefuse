import CloudXMobileFuseAdapter
import CloudXMobileFuseAdapterPackage
import XCTest

final class CloudXMobileFuseAdapterSwiftTests: XCTestCase {
    func testFrameworkIsLinked() {
        XCTAssertEqual(CLXMobileFuseAdapterVersion, "1.13.0.0")
        XCTAssertNotNil(NSClassFromString("CLXMobileFuseInitializer"))
    }
}
