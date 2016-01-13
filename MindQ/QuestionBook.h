//
//  QuestionBook.h
//  MindQ
//
//  Created by Richard Hsu on 8/26/15.
//  Copyright (c) 2015 Richard Hsu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionBook : NSObject

-(NSArray *)Questions;

-(Question *)pickRandomQuestion:(NSArray *)Questions;

@end
