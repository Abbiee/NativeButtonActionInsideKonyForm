//
//  FFIViewController.m
//  SampleButton
//
//  Created by Shaik.jabiulla on 03/09/20.
//  Copyright © 2020 Zabiullah. All rights reserved.
//

#import "FFIViewController.h"

@interface FFIViewController ()

@end

@implementation FFIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //set the background to white color
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    //create a rounded rectangle type button
    self.myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    //set the button size and position
    self.myButton.frame = CGRectMake(60, 50, 220, 50);
    
    //set the button title for the normal state
    [self.myButton setTitle:@"Invoke FFI Call"
                   forState:UIControlStateNormal];
    //set the button title for when the finger is pressing it down
    [self.myButton setTitle:@"FFI Call in progress"
                   forState:UIControlStateHighlighted];
    //add action to capture the button press down event
    [self.myButton addTarget:self
                      action:@selector(buttonIsPressed)
            forControlEvents:UIControlEventTouchDown];
    //set button tag
    [self.myButton setTag:1];
    //add the button to the view
    [self.view addSubview:self.myButton];
}

- (void) buttonIsPressed {
    NSLog(@"My Standard Button is pressed down.");
    [self callBackMethodForJs:self.testCallBack2];
}
- (void)callBackMethodForJs:(CallBack*) callbackfunction {
    [callbackfunction executeWithArguments:[NSArray arrayWithObjects:@"Hi", nil]];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
