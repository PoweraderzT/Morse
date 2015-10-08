//
//  LoginViewController.m
//  Morse
//
//  Created by Tomas Gudmundsson on 6.10.2015.
//  Copyright (c) 2015 Morse. All rights reserved.
//

#import "LoginViewController.h"
#import "ConverterViewController.h"

@interface LoginViewController ()

@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UIButton *createNewAccountButton;
@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@end

@implementation LoginViewController

#pragma mark - View Did Load

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.passwordTextField.secureTextEntry = YES;
    
    [self modifyButton:self.loginButton];
    [self modifyButton:self.createNewAccountButton];
    // Do any additional setup after loading the view, typically from a nib.
    //Bert
}

#pragma mark - Modify Buttons

- (void)modifyButton:(UIButton *)button {
    button.layer.cornerRadius = 4;
    button.layer.borderWidth = 1;
    button.layer.borderColor = [UIColor clearColor].CGColor;
}

#pragma mark - Adjustments

-(BOOL)prefersStatusBarHidden{
    return YES;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ConverterViewController *vc = (ConverterViewController *)segue.destinationViewController;
    vc.userName = self.userNameTextField.text;
}

// Willie "The Boy" Austin II

@end
