//
//  StepperViewController.m
//  NSNotificationActivity
//
//  Created by Marc Maguire on 2017-05-14.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "StepperViewController.h"

@interface StepperViewController ()

@property (weak, nonatomic) IBOutlet UIStepper *stepper;

@end

@implementation StepperViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.stepper.stepValue = 1;
    
    // Do any additional setup after loading the view.
}


- (IBAction)stepperPressed:(UIStepper *)sender {
    
    //create a reference to the notification center
    NSNotificationCenter *notificationCenter = [NSNotificationCenter defaultCenter];
    
    //create custom notification and what data to send.
    NSNotification *stepperNotification = [[NSNotification alloc]initWithName:@"stepperChangedNotification" object:self userInfo:@{ @"stepperValue" : @(sender.value) }];
  
    //post the notification
    [notificationCenter postNotification:stepperNotification];
}

@end
