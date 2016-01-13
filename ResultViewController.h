//
//  ResultViewController.h
//  MindQ
//
//  Created by Richard Hsu on 9/19/15.
//  Copyright (c) 2015 Richard Hsu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StartViewController.h"

@interface ResultViewController : UIViewController

@property (nonatomic) int mindQResult;

@property (strong, nonatomic) NSString* name;

@property (strong, nonatomic) IBOutlet UILabel *resultLabel;

- (IBAction)takeTestAgain:(id)sender;

@end


