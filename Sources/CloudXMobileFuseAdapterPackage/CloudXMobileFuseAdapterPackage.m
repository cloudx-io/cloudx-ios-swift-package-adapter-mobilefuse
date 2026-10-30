#import <CloudXMobileFuseAdapter/CloudXMobileFuseAdapter.h>

@interface CloudXMobileFuseAdapterPackageLoader : NSObject
@end

@implementation CloudXMobileFuseAdapterPackageLoader

+ (void)load {
    CloudXMobileFuseAdapterRegister();
}

@end
