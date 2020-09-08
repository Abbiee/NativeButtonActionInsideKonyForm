//
//  FFIViewController.h
//  SampleButton
//
//  Created by Shaik.jabiulla on 03/09/20.
//  Copyright © 2020 Zabiullah. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CallBack.h"

NS_ASSUME_NONNULL_BEGIN

@interface FFIViewController : UIViewController
@property (nonatomic, strong) UIButton *myButton;
@property (nonatomic, retain) CallBack *testCallBack2;

@end

NS_ASSUME_NONNULL_END
