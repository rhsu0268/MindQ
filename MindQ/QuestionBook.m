//
//  QuestionBook.m
//  MindQ
//
//  Created by Richard Hsu on 8/26/15.
//  Copyright (c) 2015 Richard Hsu. All rights reserved.
//

#import "QuestionBook.h"
#import "Question.h"

@implementation QuestionBook

-(NSArray *)Questions
{
    Question *question1 = [[Question alloc] init];
    question1.questionLabel = @"9 X 2";
    question1.questionAnswer = @"18";
    
    Question *question2 = [[Question alloc] init];
    question2.questionLabel = @"3 + 8";
    question2.questionAnswer = @"11";
    
    Question *question3 = [[Question alloc] init];
    question3.questionLabel = @"15 - 7";
    question3.questionAnswer = @"8";
    
    Question *question4 = [[Question alloc] init];
    question4.questionLabel = @"15 + 22";
    question4.questionAnswer = @"37";
    
    Question *question5 = [[Question alloc] init];
    question5.questionLabel = @"34 + 12";
    question5.questionAnswer = @"36";
    
    Question *question6 = [[Question alloc] init];
    question6.questionLabel = @"20 \u00F7 5";
    question6.questionAnswer = @"4";
    
    Question *question7 = [[Question alloc] init];
    question7.questionLabel = @"15 + 9";
    question7.questionAnswer = @"24";
    
    Question *question8 = [[Question alloc] init];
    question8.questionLabel = @"42 - 7";
    question8.questionAnswer = @"35";
    
    Question *question9 = [[Question alloc] init];
    question9.questionLabel = @"31 - 5";
    question9.questionAnswer = @"26";
    
    Question *question10 = [[Question alloc] init];
    question10.questionLabel = @"9 \u00F7 3";
    question10.questionAnswer = @"3";
    
    Question *question11 = [[Question alloc] init];
    question11.questionLabel = @"13 - 7";
    question11.questionAnswer = @"6";
    
    Question *question12 = [[Question alloc] init];
    question12.questionLabel = @"17 + 28";
    question12.questionAnswer = @"45";
    
    Question *question13 = [[Question alloc] init];
    question13.questionLabel = @"36 - 8";
    question13.questionAnswer = @"28";
    
    Question *question14 = [[Question alloc] init];
    question14.questionLabel = @"5 X 8";
    question14.questionAnswer = @"40";
    
    Question *question15 = [[Question alloc] init];
    question15.questionLabel = @"45 \u00F7 9";
    question15.questionAnswer = @"5";
    
    Question *question16 = [[Question alloc] init];
    question16.questionLabel = @"4 X 8";
    question16.questionAnswer = @"32";
    
    Question *question17 = [[Question alloc] init];
    question17.questionLabel = @"7 + 16";
    question17.questionAnswer = @"23";
    
    Question *question18 = [[Question alloc] init];
    question18.questionLabel = @"28 + 9";
    question18.questionAnswer = @"37";

    Question *question19 = [[Question alloc] init];
    question19.questionLabel = @"33 - 18";
    question19.questionAnswer = @"15";

    Question *question20 = [[Question alloc] init];
    question20.questionLabel = @"63 \u00F7 7";
    question20.questionAnswer = @"9";

    Question *question21 = [[Question alloc] init];
    question21.questionLabel = @"5 X 5";
    question21.questionAnswer = @"25";
    
    Question *question22 = [[Question alloc] init];
    question22.questionLabel = @"6 X 10";
    question22.questionAnswer = @"60";
    
    Question *question23 = [[Question alloc] init];
    question23.questionLabel = @"19 + 12";
    question23.questionAnswer = @"31";
    
    Question *question24 = [[Question alloc] init];
    question24.questionLabel = @"23 - 6";
    question24.questionAnswer = @"17";
    
    Question *question25 = [[Question alloc] init];
    question25.questionLabel = @"18 + 9";
    question25.questionAnswer = @"27";
    
    Question *question26 = [[Question alloc] init];
    question26.questionLabel = @"9 X 8";
    question26.questionAnswer = @"72";
    
    Question *question27 = [[Question alloc] init];
    question27.questionLabel = @"47 - 8";
    question27.questionAnswer = @"39";
    
    Question *question28 = [[Question alloc] init];
    question28.questionLabel = @"69 - 12";
    question28.questionAnswer = @"57";
    
    Question *question29 = [[Question alloc] init];
    question29.questionLabel = @"64 \u00F7 8";
    question29.questionAnswer = @"8";
    
    Question *question30 = [[Question alloc] init];
    question30.questionLabel = @"14 \u00F7 7";
    question30.questionAnswer = @"2";
    
    Question *question31 = [[Question alloc] init];
    question31.questionLabel = @"90 \u00F7 10";
    question31.questionAnswer = @"9";
    
    Question *question32 = [[Question alloc] init];
    question32.questionLabel = @"9 X 7";
    question32.questionAnswer = @"63";
    
    Question *question33 = [[Question alloc] init];
    question33.questionLabel = @"8 X 4";
    question33.questionAnswer = @"32";

    Question *question34 = [[Question alloc] init];
    question34.questionLabel = @"32 - 13";
    question34.questionAnswer = @"19";
    
    Question *question35 = [[Question alloc] init];
    question35.questionLabel = @"15 - 9";
    question35.questionAnswer = @"6";
    
    Question *question36 = [[Question alloc] init];
    question36.questionLabel = @"5 X 3";
    question36.questionAnswer = @"15";
    
    Question *question37 = [[Question alloc] init];
    question37.questionLabel = @"4 X 9";
    question37.questionAnswer = @"36";
    
    Question *question38 = [[Question alloc] init];
    question38.questionLabel = @"8 + 16";
    question38.questionAnswer = @"24";
    
    Question *question39 = [[Question alloc] init];
    question39.questionLabel = @"24 + 7";
    question39.questionAnswer = @"31";

    Question *question40 = [[Question alloc] init];
    question40.questionLabel = @"43 - 19";
    question40.questionAnswer = @"24";

    
    NSArray *Questions = [[NSArray alloc] initWithObjects:question1, question2, question3,
        question4, question5, question6,
        question7, question8, question9, question10,
        question11, question12, question13,
        question14, question15, question16,
        question17, question18, question19,
        question20, question21, question22,
        question23, question24, question25,
        question26, question27, question28,
        question29, question30, question31,
        question32, question33, question34,
        question35, question36, question37,
        question38, question39, question40, nil];
    
    return Questions;
}

-(Question *)pickRandomQuestion:(NSArray *)Questions
{
    NSUInteger randomIndex = arc4random() % [Questions count];
    
    return [Questions objectAtIndex:randomIndex];
}

@end
