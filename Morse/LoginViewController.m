//
//  LoginViewController.m
//  Morse
//
//  Created by Tomas Gudmundsson on 6.10.2015.
//  Copyright (c) 2015 Morse. All rights reserved.
//

#import "LoginViewController.h"
#import "ConverterViewController.h"
#import "RegisterViewController.h"

@interface LoginViewController ()

@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UIButton *createNewAccountButton;
@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
- (IBAction)btnLogin:(id)sender;

@end

@implementation LoginViewController

#pragma mark - View Did Load

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.passwordTextField.secureTextEntry = YES;
    
    [self modifyButton:self.loginButton];
    [self modifyButton:self.createNewAccountButton];
    // Do any additional setup after loading the view, typically from a nib.
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
    if([segue.identifier isEqual: @"register"]){
        RegisterViewController *rvc = (RegisterViewController *)segue.destinationViewController;
    }
    else{
        ConverterViewController *cvc = (ConverterViewController *)segue.destinationViewController;
        cvc.userName = self.userNameTextField.text;
    }
}

- (IBAction)btnLogin:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    if([_userNameTextField.text isEqualToString:@""] || [_passwordTextField.text isEqualToString:@""]){
        UIAlertView *error = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Please fill in all fields" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        [error show];
    }
    else{
        if([_userNameTextField.text isEqualToString:[defaults objectForKey:@"username"]]&& [_passwordTextField.text isEqualToString:[defaults objectForKey:@"password"]]){
            _userNameTextField = nil;
            _passwordTextField = nil;
            [self performSegueWithIdentifier:@"login" sender:self];
        }
        
        else{
            UIAlertView *error = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Username and password do not match" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            
            [error show];
        }
    }
    
}
@end
