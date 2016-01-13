//
//  ViewController.h
//  MindQ
//
//  Created by Richard Hsu on 8/26/15.
//  Copyright (c) 2015 Richard Hsu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuestionBook.h"
#import "ColorWheel.h"
#import "ResultGenerator.h"
#import "ResultViewController.h"


@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *questionLabel;


@property (strong, nonatomic) IBOutlet UIView *backgroundColor;
@property (strong, nonatomic) IBOutlet UILabel *timerLabel;

@property (nonatomic) int numberOfQuestions;

@property (strong, nonatomic) NSMutableArray *userAnswers;
@property (strong, nonatomic) NSMutableArray *correctAnswers;
@property (nonatomic) int mindQ;

-(void) startTimer;

@property (strong, nonatomic) IBOutlet UITextField *userAnswerField;

@property (strong, nonatomic) NSString* userName;


@end

