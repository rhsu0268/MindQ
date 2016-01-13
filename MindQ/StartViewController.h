//
//  StartViewController.h
//  MindQ
//
//  Created by Richard Hsu on 9/20/15.
//  Copyright (c) 2015 Richard Hsu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface StartViewController : UIViewController <UITextFieldDelegate>

- (IBAction)beginTest:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UITextField *nameField;

@end
