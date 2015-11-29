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
- (IBAction)englishTextChanged:(UITextField *)sender {
    NSDictionary *morseCharacterArray = @{
                                          @"A" : @".-",
                                          @"B" : @"-...",
                                          @"C" : @"-.-.",
                                          @"D" : @"-..",
                                          @"E" : @".",
                                          @"F" : @"..-.",
                                          @"G" : @"--.",
                                          @"H" : @"....",
                                          @"I" : @"..",
                                          @"J" : @".---",
                                          @"K" : @"-.-",
                                          @"L" : @".-..",
                                          @"M" : @"--",
                                          @"N" : @"-.",
                                          @"O" : @"---",
                                          @"P" : @".--.",
                                          @"Q" : @"--.-",
                                          @"R" : @".-.",
                                          @"S" : @"...",
                                          @"T" : @"-",
                                          @"U" : @"..-",
                                          @"V" : @"...-",
                                          @"W" : @".--",
                                          @"X" : @"-..-",
                                          @"Y" : @"-.--",
                                          @"Z" : @"--..",
                                          @"1" : @".----",
                                          @"2" : @"..---",
                                          @"3" : @"...--",
                                          @"4" : @"....-",
                                          @"5" : @".....",
                                          @"6" : @"-....",
                                          @"7" : @"--...",
                                          @"8" : @"---..",
                                          @"9" : @"----.",
                                          @"0" : @"-----",
                                          @" " : @" ",
                                          @"," : @"--..--",
                                          @"." : @".-.-.-",
                                          @"?" : @"..--..",
                                          @"\'" : @".----.",
                                          @"!" : @"-.-.--",
                                          @"/" : @"-..-.",
                                          @"(" : @"-.--.",
                                          @")" : @"-.--.-",
                                          @"&" : @".-...",
                                          @":" : @"---...",
                                          @";" : @"-.-.-.",
                                          @"=" : @"-...-",
                                          @"+" : @".-.-.",
                                          @"-" : @"-....-",
                                          @"_" : @"..--.-",
                                          @"\"" : @".-..-.",
                                          @"$" : @"...-..-",
                                          @"@" : @".--.-."
                                          };
    
    
    NSString *inputString = [self.englishTextField.text uppercaseString];
    
    NSMutableString *outputString = [NSMutableString string];
    
    for (NSInteger charIdx=0; charIdx<inputString.length; charIdx++) {
        NSString *string = [NSString stringWithFormat:@"%c", [inputString characterAtIndex:charIdx]];
        NSString *charValue = [morseCharacterArray objectForKeyedSubscript:string];
        [outputString appendString:charValue];
    }
    self.morseTextField.text = outputString;

}

- (IBAction)morseTextChanged:(UITextField *)sender {
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
                                            @"---":@"O",
                                            @".--.":@"P",
                                            @"Q" : @"--.-",
                                            @"R" : @".-.",
                                            @"S" : @"...",
                                            @"T" : @"-",
                                            @"U" : @"..-",
                                            @"V" : @"...-",
                                            @"W" : @".--",
                                            @"X" : @"-..-",
                                            @"Y" : @"-.--",
                                            @"Z" : @"--..",
                                            @"1" : @".----",
                                            @"2" : @"..---",
                                            @"3" : @"...--",
                                            @"4" : @"....-",
                                            @"5" : @".....",
                                            @"6" : @"-....",
                                            @"7" : @"--...",
                                            @"8" : @"---..",
                                            @"9" : @"----.",
                                            @"0" : @"-----",
                                            @" " : @" ",
                                            @"," : @"--..--",
                                            @"." : @".-.-.-",
                                            @"?" : @"..--..",
                                            @"\'" : @".----.",
                                            @"!" : @"-.-.--",
                                            @"/" : @"-..-.",
                                            @"(" : @"-.--.",
                                            @")" : @"-.--.-",
                                            @"&" : @".-...",
                                            @":" : @"---...",
                                            @";" : @"-.-.-.",
                                            @"=" : @"-...-",
                                            @"+" : @".-.-.",
                                            @"-" : @"-....-",
                                            @"_" : @"..--.-",
                                            @"\"" : @".-..-.",
                                            @"$" : @"...-..-",
                                            @"@" : @".--.-."
                                            };
    
    NSString *inputString = self.morseTextField.text;
    
    NSMutableString *outputString = [NSMutableString string];
    
    NSArray *words = [inputString componentsSeparatedByString:@" "];
    
    for (NSString *word in words) {
        NSString *charValue = [englishCharacterArray objectForKeyedSubscript:word];
        
        if (charValue != nil) {
            [outputString appendString:charValue];
            [outputString appendString:@"  "];
        }
    }
    self.englishTextField.text = outputString;

}

- (IBAction)logOut:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)getRandomWord:(UIButton *)sender {
    self.englishTextField.text = [RandomWordList getRandomWords];
    self.morseTextField.text = @"";
    [self englishTextChanged:self.englishTextField];
    
}

@end