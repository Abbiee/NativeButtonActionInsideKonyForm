//
//  testCallBack.m
//  VMAppWithKonylib
//
//  Created by PRODUCT on 06/01/16.
//
//

#import "testCallBack.h"
#import "FFIViewController.h"
#import "KonyUIContext.h"

@implementation testCallBack

#pragma mark Singleton Methods

+ (id)sharedManager {
    static testCallBack *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

- (id)init {
    if (self = [super init]) {
//        someProperty = [[NSString alloc] initWithString:@"Default Property Value"];
    }
    return self;
}

-(void) UIButtonClick:(CallBack*) JSCallBack
{
    FFIViewController *viewC =[[FFIViewController alloc] init];
    viewC.testCallBack2 = [JSCallBack retain];
       dispatch_async(dispatch_get_main_queue(), ^{
           [KonyUIContext onNavigationControllerPresentModalViewController:viewC animated:YES];
       });
       
}

- (void)callBackMethodForJs:(CallBack*) callbackfunction {
    self.testCallBack = callbackfunction;
    [self.testCallBack executeWithArguments:[NSArray arrayWithObjects:@"Hi", nil]];
}


@end
