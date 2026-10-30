@import CloudXMobileFuseAdapter;
@import CloudXMobileFuseAdapterPackage;
@import XCTest;

@interface CloudXMobileFuseAdapterObjCTests : XCTestCase
@end

@implementation CloudXMobileFuseAdapterObjCTests

- (void)testFrameworkIsLinked {
    XCTAssertEqualObjects(CLXMobileFuseAdapterVersion, @"1.13.0.0");
    XCTAssertNotNil(NSClassFromString(@"CLXMobileFuseInitializer"));
}

@end
