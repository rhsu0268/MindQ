//
//  ResultViewController.m
//  MindQ
//
//  Created by Richard Hsu on 9/19/15.
//  Copyright (c) 2015 Richard Hsu. All rights reserved.
//

#import "ResultViewController.h"

@interface ResultViewController ()

@end

@implementation ResultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if ([self.name isEqualToString:@""])
    {
        self.name = @"Friend";
        self.resultLabel.text = [NSString stringWithFormat:@"%@, your mindQ is %d!", self.name, self.mindQResult];
    }
    else
    {
        self.resultLabel.text = [NSString stringWithFormat:@"%@, your mindQ is %d!", self.name, self.mindQResult];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)takeTestAgain:(id)sender {
    
    /*
    for (UIViewController *controller in self.navigationController.viewControllers)
    {
        if ([controller isKindOfClass:[StartViewController class]])
        {
            [self.navigationController popToViewController:controller animated:YES];
            
            //break;
        }
    }
    */
    
    [[[self presentingViewController] presentingViewController] dismissViewControllerAnimated:YES completion:nil];
    
}
@end
