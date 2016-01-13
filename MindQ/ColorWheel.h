//
//  ColorWheel.h
//  MindQ
//
//  Created by Richard Hsu on 8/26/15.
//  Copyright (c) 2015 Richard Hsu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"

@interface ColorWheel : NSObject

-(NSArray *)Colors;
-(UIColor *)pickRandomColor:(NSArray *)colors;

@end
