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
@property (nonatomic) NSString *counterLabelValue;

@end

@implementation CounterViewController

-(instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateLabelFromNotification:) name:@"stepperChangedNotification" object:nil];
        _counterLabelValue = [[NSString alloc]init];
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

-(void)viewWillAppear:(BOOL)animated {
    
    self.counterLabel.text = self.counterLabelValue;

    
}

- (void)updateLabelFromNotification:(NSNotification *)notification{
    
    self.counterLabelValue = [notification.userInfo[@"stepperValue"] stringValue];
    
}



@end
