//
//  KeyboardAdjusterViewController.m
//  NSNotificationActivity
//
//  Created by Marc Maguire on 2017-05-14.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "KeyboardAdjusterViewController.h"

@interface KeyboardAdjusterViewController ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *whiteViewBottomSpacingConstraint;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation KeyboardAdjusterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateViewConstraints) name:UIKeyboardDidShowNotification object:nil];
    // Do any additional setup after loading the view.
}

//tapgesture to resign first responder from keyboard
//assign to method that returns view constraints to original form.

//register as listener for keyboard messages, if so updatedconstraints


- (void)updateViewConstraints:(NSNotification *)notification {
    
    //expand the y constant to be the same as the keyboard + the current value.
    
}

- (IBAction)superViewTapped:(UITapGestureRecognizer *)sender {
    
    
    [self.textField resignFirstResponder];
    //update y constant to be opposite of what it is in the updateViewConstraints
    
}



@end
