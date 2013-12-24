//
//  UIView+UIPCornerRadius.m
//  ImageShuttle
//
//  Created by Maximilian Christ on 11/11/13.
//  Copyright (c) 2013 Boinx Software Ltd. All rights reserved.
//

#import "UIView+UIPCornerRadius.h"

@implementation UIView (UIPCornerRadius)

- (CGFloat)cornerRadius
{
	return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
	self.layer.cornerRadius = cornerRadius;
}

@end
