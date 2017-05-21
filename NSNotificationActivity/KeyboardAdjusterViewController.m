//
//  KeyboardAdjusterViewController.m
//  NSNotificationActivity
//
//  Created by Marc Maguire on 2017-05-14.
//  Copyright © 2017 Marc Maguire. All rights reserved.
//

#import "KeyboardAdjusterViewController.h"

@interface KeyboardAdjusterViewController ()


@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (nonatomic) CGRect oldBounds;
@property (nonatomic) CGRect oldFrame;
@property (weak, nonatomic) IBOutlet UIView *containerView;


@end

@implementation KeyboardAdjusterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSNotificationCenter *notificationCenter = [NSNotificationCenter defaultCenter];
    [notificationCenter addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    [notificationCenter addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    
    _oldBounds = self.view.bounds;
    _oldFrame = self.view.frame;
    // Do any additional setup after loading the view.
}

//tapgesture to resign first responder from keyboard
//assign to method that returns view constraints to original form.

//register as listener for keyboard messages, if so updatedconstraints


- (void)keyboardWillShow:(NSNotification *)notification {
    
    //expand the y constant to be the same as the keyboard + the current value.
    NSValue *value = notification.userInfo[UIKeyboardFrameEndUserInfoKey];
    CGRect rect = value.CGRectValue;
    self.view.bounds = CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y + rect.size.height, self.view.frame.size.width, self.view.frame.size.height);
    
}

- (void)keyboardWillHide:(NSNotification *)notification {
   
    NSValue *value = notification.userInfo[UIKeyboardFrameEndUserInfoKey];
//    CGRect rect = value.CGRectValue;
    self.view.bounds = CGRectMake(self.view.frame.origin.x, self.oldFrame.origin.y, self.view.frame.size.width, self.view.frame.size.height);


    
    
    
}

- (IBAction)superViewTapped:(UITapGestureRecognizer *)sender {
    
    
    [self.textField resignFirstResponder];
    //update y constant to be opposite of what it is in the updateViewConstraints
    
}



@end
