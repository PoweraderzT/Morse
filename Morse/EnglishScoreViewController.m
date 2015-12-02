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
@property (weak, nonatomic) IBOutlet UILabel *scoreField;
@property int score;
@end

@implementation EnglishScoreViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.score = 0;
    
    self.englishTextField.text = [RandomWordList getRandomWords];
    self.morseTextField.text = @"";
    //[self englishTextChanged:self.englishTextField];
    
    // Do any additional setup after loading the view.
}
- (IBAction)logOut:(UIButton *)sender {
    //[self dismissViewControllerAnimated:YES completion:nil];
}


- (IBAction)submit:(UIButton *)sender {
    
    NSDictionary *englishCharacterArray = @{
                                            
                                            @"/" : @" ",
                                            @".-" : @"A",
                                            @"-..." : @"B",
                                            @"-.-."  : @"C",
                                            @"-.."  : @"D",
                                            @"."  : @"E",
                                            @"..-."  : @"F",
                                            @"--."  : @"G",
                                            @"...." :  @"H",
                                            @".." :  @"I",
                                            @".---"  : @"J",
                                            @"-.-"  : @"K",
                                            @".-.."  : @"L",
                                            @"--." : @"M",
                                            @"-." : @"N" ,
                                            @"---" : @"O",
                                            @".--." : @"P",
                                            @"--.-" : @"Q",
                                            @".-." : @"R",
                                            @"..." : @"S",
                                            @"-" : @"T",
                                            @"..-" : @"U",
                                            @"...-" : @"V",
                                            @".--" : @"W",
                                            @"-..-":@"X",
                                            @"-.--":@"Y",
                                            @"--..":@"Z",
                                            @".----":@"1",
                                            @"..---":@"2",
                                            @"...--":@"3",
                                            @"....-":@"4",
                                            @".....":@"5",
                                            @"-....":@"6",
                                            @"--...":@"7",
                                            @"---..":@"8",
                                            @"----.": @"9",
                                            @"-----":@"0",
                                            @" ":@" ",
                                            @"--..--":@",",
                                            @".-.-.-":@".",
                                            @"..--..":@"?",
                                            @".----.":@"\'",
                                            @"-.-.--":@"!",
                                            @"-..-.":@"/",
                                            @"-.--.":@"(",
                                            @"-.--.-":@")",
                                            @".-...":@"&",
                                            @"---...":@":",
                                            @"-.-.-.":@";",
                                            @"-...-":@"=",
                                            @".-.-.":@"+",
                                            @"-....-":@"-",
                                            @"..--.-":@"_",
                                            @".-..-.":@"\"",
                                            @"...-..-":@"$",
                                            @".--.-.":@"@",
                                            };

    
    if ([self.morseTextField.text isEqualToString:[englishCharacterArray objectForKeyedSubscript:self.englishTextField.text]]) {
        self.score = self.score + 1;
    }
    else {
        self.score = self.score - 1;
    }
    self.scoreField.text = [NSString stringWithFormat:@"%i",self.score];
    
    self.englishTextField.text = [RandomWordList getRandomWords];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)goBack:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(BOOL)prefersStatusBarHidden{
    return YES;
}

@end
