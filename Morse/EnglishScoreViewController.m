//
//  EnglishScoreViewController.m
//  Morse
//
//  Created by Tomas Gudmundsson on 1.12.2015.
//  Copyright (c) 2015 Morse. All rights reserved.
//

#import "EnglishScoreViewController.h"
#import "RandomWordList.h"

@interface EnglishScoreViewController ()
@property (weak, nonatomic) IBOutlet UITextField *englishTextField;
@property (weak, nonatomic) IBOutlet UITextField *morseTextField;
@end

@implementation EnglishScoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.englishTextField.text = [RandomWordList getRandomWords];
    self.morseTextField.text = @"";
    //[self englishTextChanged:self.englishTextField];
    
    // Do any additional setup after loading the view.
}
- (IBAction)logOut:(UIButton *)sender {
    //[self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)goBack:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
