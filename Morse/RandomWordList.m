//
//  RandomWordList.m
//  Morse
//
//  Created by Tomas Gudmundsson on 22.10.2015.
//  Copyright (c) 2015 Morse. All rights reserved.
//

#import "RandomWordList.h"

@implementation RandomWordList

+ (NSString *)getRandomWords
{
    return [@[@"man", @"house", @"kid", @"campus", @"life", @"beer", @"sun", @"storm", @"chair", @"window", @"glass", @"astronaut", @"phone", @"teacher", @"professor", @"university", @"apple", @"orange", @"car", @"book", @"India", @"Rajasthan", @"Mumbai", @"Delhi", @"Bengaluru"] objectAtIndex:(rand() % 25)];
}

+ (NSString *)getRandomMorse
{
    return [@[@"... --- ..-. - .-- .- .-. .", @". -. --. .. -. . . .-. .. -. --.", @"- .-. --- -.--", @"... - ..- -.. . -. -",@".-.. .. -... .-. .- .-. -.--",@"-.-. --- -- .--. ..- - . .-.",@"... -.-. .. . -. -.-. .",@"-- .- - .... . -- .- - .. -.-. ...",@"-.. .- - .- -... .- ... .",@"-.. .- - .- ... - .-. ..- -.-. - ..- .-. .",@"--. .. --. .- -... -.-- - .",@"-- . -- --- .-. -.--",@"-- --- .-. ... .",@".- .-.. .--. .... .- -... . -",@"-.. . -.-. --- -.. . .-.",@"-.-. --- -- .--. .. .-.. . .-.",@".--. .-. --- -.-. . ... ... --- .-.",@"-.-. --- -. - .-. --- .-.. .-.. . .-.",@". -. -.-. .-. -.-- .--. - .. --- -.",@"--- -... .--- . -.-. -",@".--. .-. --- .--- . -.-. -",@".- ... ... .. --. -. -- . -. -",@".. -. -.. . -..-",@".. -. .--. ..- -",@"--- ..- - .--. ..- -"]objectAtIndex:(rand()%25)];
}

@end
