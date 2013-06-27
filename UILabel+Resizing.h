//
//  UILabel+Resizing.h
//
//  Created by David Amend on 14.06.13.
//  Copyright (c) 2013 David Amend. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Resizing)


/*Calls sizeToFit on the calling label and moves to label depending on its alignment back to its original position
 Not tested with NSTextAlignment
*/
-(void)sizeToFitByConsideringTextAlignment;

@end
