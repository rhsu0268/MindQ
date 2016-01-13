//
//  ResultGenerator.m
//  MindQ
//
//  Created by Richard Hsu on 9/20/15.
//  Copyright (c) 2015 Richard Hsu. All rights reserved.
//

#import "ResultGenerator.h"

@implementation ResultGenerator

-(int)checkCorrectAnswers:(NSMutableArray *)correctAnswers WithUserAnswers:(NSMutableArray *)userAnswers;
{
    int numberCorrect = 0;
    //iterae over the length of the correctAnswers
    for (int i = 0; i < [correctAnswers count]; i++)
    {
        if ([[correctAnswers objectAtIndex:i] isEqualToString:[userAnswers objectAtIndex:i]])
        {
            numberCorrect++;
        }
    }
    return numberCorrect;
}

// determine age
-(int)determineMindQ:(int)correctAnswers
{
    if (correctAnswers == 40)
    {
        return 7;
    }
    else if (correctAnswers >= 38 && correctAnswers <= 39)
    {
        return 10;
    }
    else if (correctAnswers >= 35 && correctAnswers <= 37)
    {
        return 15;
    }
    else if (correctAnswers >= 31 && correctAnswers <= 34)
    {
        return 20;
    }
    else if (correctAnswers >= 27 && correctAnswers <= 30)
    {
        return 25;
    }
    else if (correctAnswers >= 23 && correctAnswers <= 26)
    {
        return 30;
    }
    else if (correctAnswers >= 19 && correctAnswers <= 22)
    {
        return 35;
    }
    else if (correctAnswers >= 15 && correctAnswers <= 18)
    {
        return 40;
    }
    else if (correctAnswers >= 11 && correctAnswers <= 14)
    {
        return 50;
    }
    else if (correctAnswers >= 7 && correctAnswers <= 10)
    {
        return 60;
    }
    else if (correctAnswers >= 3 && correctAnswers <= 6)
    {
        return 70;
    }
    else
    {
        return 80;
    }
}
@end
