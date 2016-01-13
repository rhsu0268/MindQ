//
//  ColorWheel.m
//  MindQ
//
//  Created by Richard Hsu on 8/26/15.
//  Copyright (c) 2015 Richard Hsu. All rights reserved.
//

#import "ColorWheel.h"

@implementation ColorWheel

-(NSArray *)Colors
{
    NSArray *colors = [[NSArray alloc] initWithObjects:
        [UIColor colorWithRed:90/255.0 green:187/255.0 blue:181/255.0 alpha:1.0], //teal color
        [UIColor colorWithRed:222/255.0 green:171/255.0 blue:66/255.0 alpha:1.0], //yellow color
        [UIColor colorWithRed:223/255.0 green:86/255.0 blue:94/255.0 alpha:1.0], //red color
        [UIColor colorWithRed:239/255.0 green:130/255.0 blue:100/255.0 alpha:1.0], //orange color
        [UIColor colorWithRed:77/255.0 green:75/255.0 blue:82/255.0 alpha:1.0], //dark color
        [UIColor colorWithRed:105/255.0 green:94/255.0 blue:133/255.0 alpha:1.0], //purple color
        [UIColor colorWithRed:85/255.0 green:176/255.0 blue:112/255.0 alpha:1.0], //green color
        nil];
    return colors;
    
}

-(UIColor *)pickRandomColor:(NSArray *)colors
{
    NSUInteger randomIndex = arc4random() % [colors count];
    return [colors objectAtIndex: randomIndex];
}



@end
