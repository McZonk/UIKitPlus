//
//  UIPOversizeScrollView.m
//  Plus
//
//  Created by Maximilian Christ on 5/30/12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import "UIPOversizeScrollView.h"

@implementation UIPOversizeScrollView

- (void)setOversizeInsetsBySuperviewFrame {
	UIView* superview = self.superview;
	if(superview == nil) {
		self.oversizeInsets = UIEdgeInsetsZero;
		return;
	}
	
	CGSize superviewSize = superview.bounds.size;
	
	CGRect frame = self.frame;
	
	UIEdgeInsets insets;
	insets.left = frame.origin.x;
	insets.top = frame.origin.y;
	insets.right = superviewSize.width - (frame.origin.x + frame.size.width);
	insets.bottom = superviewSize.height - (frame.origin.y + frame.size.height);
	
	self.oversizeInsets = insets;
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent*)event {
	CGRect frame = self.frame;
	CGRect bounds = self.bounds;
	UIEdgeInsets insets = self.oversizeInsets;
	
    CGPoint parentLocation = CGPointMake(point.x - bounds.origin.x, point.y - bounds.origin.y);
	
	frame.origin = CGPointZero;
    frame.origin.x -= insets.left;
    frame.origin.y -= insets.top;
    frame.size.width += (insets.left + insets.right);
    frame.size.height += (insets.top + insets.bottom);
	
    return CGRectContainsPoint(frame, parentLocation);
}

@end
