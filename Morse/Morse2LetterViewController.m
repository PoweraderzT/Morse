//
//  morse code for letters.m
//  Morse
//
//  Created by Willie Austin II and Quinton Lofton on 11/2/15.
//  Copyright (c) 2015 Morse. All rights reserved.
//

#import "Morse2LetterViewController.h"

@interface Morse2LetterViewController ()

@end

@implementation Morse2LetterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)translateUserString:(UIButton *)sender {
    BOOL stringPresent = (self.userInput.text.length > 0);
    
    if (stringPresent) {
        NSDictionary *morseCharacterKey = @{
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
                                            @" " : @"/",
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
        
        
        NSString *userString = self.userInput.text;
        NSMutableString *outputString = [NSMutableString string];
        
        for (NSUInteger i = 0; i < userString.length; i++) {
            NSString *letter = [userString substringWithRange:NSMakeRange(i, 1)];
            
            //NSString *morse = morseCharacterKey[letter];
            //          [outputString appendingString:morse];
        }
        
        self.outputField.text = outputString;
        
        //NSString *userString = self.userInput.text;
        //NSString *outputString;
        
        //for (int i = 0; userString.length > i; i++){
        //  char userCharacter = [userString characterAtIndex:i];
        //
        //char morseCharacter = [morseCharacterKey objectForKey:morseCharacterKey[userCharacter]];
        //outputString stringByAppendingString:[morseCharacterKey];
        
        //self.outputField.text = outputString;
    }
    
}

@end
