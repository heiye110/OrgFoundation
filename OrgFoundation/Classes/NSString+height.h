//
//  NSString+height.h
//  Orange
//
//  Created by lmc on 16/3/15.
//  Copyright © 2016年 lmc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (height)

-(CGSize) orgSizeWithFont:(UIFont *)font;

-(CGFloat) orgHeightWithFont:(UIFont*)font lineBreakMode:(NSLineBreakMode)mode withWidth:(CGFloat)width;
-(CGSize) orgSizeWithFont:(UIFont *)font lineBreakMode:(NSLineBreakMode)lineBreakMode withWidth:(CGFloat)width;

-(CGSize) orgSizeWithFont:(UIFont *)font constrainedToSize:(CGSize)size;
-(CGSize) orgSizeWithFont:(UIFont *)font constrainedToSize:(CGSize)size lineBreakMode:(NSLineBreakMode)mode;

@end
