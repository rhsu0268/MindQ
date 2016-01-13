//
//  ResultGenerator.h
//  MindQ
//
//  Created by Richard Hsu on 9/20/15.
//  Copyright (c) 2015 Richard Hsu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ResultGenerator : NSObject

// method that checks the correctAnswers with the userAnswers
-(int)checkCorrectAnswers:(NSMutableArray *)correctAnswers WithUserAnswers:(NSMutableArray *)userAnswers;

-(int)determineMindQ:(int)correctAnswers;


@end
