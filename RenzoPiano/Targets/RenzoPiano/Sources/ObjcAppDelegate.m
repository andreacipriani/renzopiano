#import "ObjcAppDelegate.h"
@import FeatureA;
#import "FeatureB.h"

@implementation ObjcAppDelegate

+ (void)start
{
    NSLog(@"The app can invoke a function on %@ from Objective-C code", [FeatureA makeA]);
    NSLog(@"The app can invoke a function on %@ from Objective-C code", [FeatureB makeB]);
}

@end
