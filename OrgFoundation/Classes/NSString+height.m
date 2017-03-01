//
//  NSString+height.m
//  Orange
//
//  Created by lmc on 16/3/15.
//  Copyright © 2016年 lmc. All rights reserved.
//

#import "NSString+height.h"
#import <CoreGraphics/CoreGraphics.h>

@implementation NSString (height)

-(CGSize) orgSizeWithFont:(UIFont *)font {
    return [self orgSizeWithFont:font constrainedToSize:CGSizeMake(MAXFLOAT, MAXFLOAT) lineBreakMode:NSLineBreakByWordWrapping];
}

-(CGFloat) orgHeightWithFont:(UIFont*)font lineBreakMode:(NSLineBreakMode)mode withWidth:(CGFloat)width {
    if(self == nil || [self length] == 0)
        return 0;
    
    CGSize constraint = CGSizeMake(width, MAXFLOAT);
    CGSize theSize = [self orgSizeWithFont:font constrainedToSize:constraint lineBreakMode:mode];
    return theSize.height;
}

-(CGSize) orgSizeWithFont:(UIFont *)font lineBreakMode:(NSLineBreakMode)lineBreakMode withWidth:(CGFloat)width {
    return [self orgSizeWithFont:font constrainedToSize:CGSizeMake(width, MAXFLOAT) lineBreakMode:lineBreakMode];
}

-(CGSize) orgSizeWithFont:(UIFont *)font constrainedToSize:(CGSize)size {
    return [self orgSizeWithFont:font constrainedToSize:size lineBreakMode:NSLineBreakByWordWrapping];
}

-(CGSize) orgSizeWithFont:(UIFont *)font constrainedToSize:(CGSize)size lineBreakMode:(NSLineBreakMode)mode {
    if (!self || self.length == 0) {
        return CGSizeZero;
    }
    NSDictionary * attrs = [NSDictionary dictionaryWithObjectsAndKeys:font, NSFontAttributeName, nil];
    //IOS7 测量字符串问题，需向下取整
    CGSize sbSize = [self boundingRectWithSize:size options:NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
    sbSize.height = ceilf(sbSize.height);
    sbSize.width = ceilf(sbSize.width);
    return sbSize;
}

@end
