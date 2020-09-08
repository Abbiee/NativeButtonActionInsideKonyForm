//
//  testCallBack.h
//  VMAppWithKonylib
//
//  Created by PRODUCT on 06/01/16.
//
//

#import <Foundation/Foundation.h>
#import "CallBack.h"


@interface testCallBack : NSObject

+ (id)sharedManager;

-(void) UIButtonClick:(CallBack*) JSCallBack;
@property (nonatomic, retain) CallBack *testCallBack;

@end
