//
//  ViewController.m
//  MindQ
//
//  Created by Richard Hsu on 8/26/15.
//  Copyright (c) 2015 Richard Hsu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

NSTimer *timer;
bool showTest;
int timeTick = 12;
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /*
    if (!showTest)
    {
        [self dismissViewControllerAnimated:YES completion:nil];
    }
    */
    timeTick = 12;
    self.correctAnswers = [[NSMutableArray alloc] init];
    
    self.userAnswers = [[NSMutableArray alloc] init];
    
    // initialize the view
    QuestionBook *questionBook = [[QuestionBook alloc] init];
    Question *question = [[Question alloc] init];
    question = [questionBook pickRandomQuestion:[questionBook Questions]];
    
    
    // put the correct answer into the correctAnswers array
    [self.correctAnswers addObject:question.questionAnswer];
    
    self.questionLabel.text = question.questionLabel;
    //NSLog(@"%@", self.correctAnswers);
    
    ColorWheel *colorWheel = [[ColorWheel alloc] init];
    UIColor *color = [[UIColor alloc] init];
    
    color = [colorWheel pickRandomColor:[colorWheel Colors]];
    self.view.backgroundColor = color;
    
    self.numberOfQuestions++;
    
    
    [self startTimer];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    self.timerLabel.text = [[NSString alloc] initWithFormat:@"%d", timeTick];
    // Dispose of any resources that can be recreated.
}




-(void) startTimer

{
    [timer invalidate];
    //ViewController *examController = [[ViewController alloc] init];
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(tick) userInfo:nil repeats:YES];
}

-(void)tick
{
   
    timeTick--;
    //NSLog(@"%d", timeTick);
    NSString *timeString = [[NSString alloc]initWithFormat:@"%d", timeTick];
    self.timerLabel.text = timeString;
    if (timeTick == 0 && self.numberOfQuestions < 40)
    {
        
        // store the user's answer
        [self.userAnswers addObject:self.userAnswerField.text];
        NSLog(@"%@", self.userAnswers);
        
        // clear the userAnswerField
        self.userAnswerField.text = @"";
        
        QuestionBook *questionBook = [[QuestionBook alloc] init];
        Question *question = [[Question alloc] init];
        question = [questionBook pickRandomQuestion:[questionBook Questions]];
        
        
        // put the correct answer into the correctAnswers array
        [self.correctAnswers addObject:question.questionAnswer];
        
        self.questionLabel.text = question.questionLabel;
        //NSLog(@"%@", self.correctAnswers);
        
        ColorWheel *colorWheel = [[ColorWheel alloc] init];
        UIColor *color = [[UIColor alloc] init];
        
        color = [colorWheel pickRandomColor:[colorWheel Colors]];
        self.view.backgroundColor = color;
        
        // increment number of questions
        self.numberOfQuestions++;
        
        // reset the timer
        timeTick = 12;
        [self startTimer];

    }
    else if (timeTick == 0 && self.numberOfQuestions == 40)
    {
        // store the last answer
        [self.userAnswers addObject:self.userAnswerField.text];
        NSLog(@"%@", self.userAnswers);
        
        ResultGenerator *resultGenerator = [[ResultGenerator alloc] init];
        
        int correct = [resultGenerator checkCorrectAnswers:self.correctAnswers WithUserAnswers:self.userAnswers];
        NSLog(@"%d", correct);
        
        self.mindQ = [resultGenerator determineMindQ:correct];
        NSLog(@"%d", self.mindQ);
        
        
        [self performSegueWithIdentifier:@"toResultViewController" sender:nil];
    }

    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString: @"toResultViewController"])
    {
       
        ResultViewController *controller = (ResultViewController *)segue.destinationViewController;
        controller.mindQResult = self.mindQ;
        controller.name = self.userName;
        
    }
}
@end
