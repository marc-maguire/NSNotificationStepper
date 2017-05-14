//
//  CounterViewController.m
//  NSNotificationActivity
//
//  Created by Marc Maguire on 2017-05-14.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "CounterViewController.h"

@interface CounterViewController ()
@property (weak, nonatomic) IBOutlet UILabel *counterLabel;

@end

@implementation CounterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.counterLabel.text = @"0";

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateLabelFromNotification:) name:@"stepperChangedNotification" object:nil];
    
    
}

- (void)updateLabelFromNotification:(NSNotification *)notification{
    
    self.counterLabel.text = [notification.userInfo[@"stepperValue"] stringValue];
    
}



@end
