//
//  RegisterViewController.m
//  
//
//  Created by Bert Roman
//
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@property (weak, nonatomic) IBOutlet UITextField *txfUsername;
@property (weak, nonatomic) IBOutlet UITextField *txfPassword;
@property (weak, nonatomic) IBOutlet UITextField *txfConfirmPassword;

- (IBAction)btnCreate:(id)sender;
- (IBAction)btnHome:(id)sender;

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnCreate:(id)sender {
    if([_txfUsername.text isEqualToString:@""]||[_txfPassword.text isEqualToString:@""]||[_txfConfirmPassword.text isEqualToString:@""]){
        UIAlertView *error = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Please fill in all fields" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        [error show];
    }
    else{
        if ([_txfPassword.text isEqualToString:_txfConfirmPassword.text]) {
            [self registerNewUser];
        }
        else{
            UIAlertView *error = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Passwords do not match" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            
            [error show];
        }
    }
    
}

- (void) registerNewUser{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:_txfUsername.text forKey:@"username"];
    [defaults setObject:_txfPassword.text forKey:@"password"];
    [defaults synchronize];
    
    UIAlertView *success = [[UIAlertView alloc] initWithTitle:@"Success" message:[NSString stringWithFormat:@"New user %@ registered", _txfUsername.text] delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    [success show];
    
    [self performSegueWithIdentifier:@"home" sender:self];
}

- (IBAction)btnHome:(id)sender {
    [self performSegueWithIdentifier:@"home" sender:self];
}
@end
