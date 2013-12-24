//
//  UIPDiffusiveView.m
//  Plus
//
//  Created by Maximilian Christ on 20.02.12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import "UIPDiffusiveView.h"

@implementation UIPDiffusiveView

- (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent*)event {
	UIView* view = [super hitTest:point withEvent:event];
	
	// Ignore self
	if(view == self) {
		return nil;
	}
	
	return view;
}

@end
