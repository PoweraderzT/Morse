//
//  ConverterViewController.m
//  Morse
//
//  Created by Tomas Gudmundsson on 7.10.2015.
//  Copyright (c) 2015 Morse. All rights reserved.
//

#import "ConverterViewController.h"
#import "RandomWordList.h"

@interface ConverterViewController ()

@property (weak, nonatomic) IBOutlet UILabel *userNameLabel;
@property (weak, nonatomic) IBOutlet UIButton *logOutButton;
@property (weak, nonatomic) IBOutlet UIButton *randomWordButton;
@property (weak, nonatomic) IBOutlet UITextField *englishTextField;
@property (weak, nonatomic) IBOutlet UITextField *morseTextField;

@end

@implementation ConverterViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    self.userNameLabel.text = self.userName;
    
    [self modifyButton:self.logOutButton];
    [self modifyButton:self.randomWordButton];
}

-(BOOL)prefersStatusBarHidden{
    return YES;
}

- (void)modifyButton:(UIButton *)button {
    button.layer.cornerRadius = 4;
    button.layer.borderWidth = 1;
    button.layer.borderColor = [UIColor clearColor].CGColor;
}

- (IBAction)logOut:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)getRandomWord:(UIButton *)sender {
    self.englishTextField.text = [RandomWordList getRandomWords];
}
@end