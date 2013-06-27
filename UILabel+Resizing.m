//
//  UILabel+Resizing.m
//
//  Created by David Amend on 14.06.13.
//  Copyright (c) 2013 David Amend. All rights reserved.
//

#import "UILabel+Resizing.h"
#import <uiview-frame-helpers/UIView+CBFrameHelpers.h>

@implementation UILabel (Resizing)


-(void)sizeToFitByConsideringTextAlignment{

    switch (self.textAlignment) {
        case UITextAlignmentRight:{
            CGFloat maxX = self.maxX;
            [self sizeToFit];
            [self setX:(maxX - self.width)];
        }
            break;
        case UITextAlignmentCenter:{
            CGPoint center = self.center;
            [self sizeToFit];
            [self setCenter:center];
            CGRectIntegral(self.frame);
        }
            break;
        default:
            [self sizeToFit];
            break;
    } 
}
@end
