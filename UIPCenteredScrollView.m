//
//  UIPCenteredScrollView.m
//  Plus
//
//  Created by Maximilian Christ on 5/30/12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import "UIPCenteredScrollView.h"

@implementation UIPCenteredScrollView

- (void)layoutSubviews {
	[super layoutSubviews];
	
	CGSize boundsSize = self.bounds.size;
	
	UIView* centerView = self.subviews.firstObject;
	
	CGRect frameToCenter = centerView.frame;
	
	if(frameToCenter.size.width < boundsSize.width) {
		frameToCenter.origin.x = (boundsSize.width - frameToCenter.size.width) * 0.5f;
	} else {
		frameToCenter.origin.x = 0;
	}
	
	if(frameToCenter.size.height < boundsSize.height) {
		frameToCenter.origin.y = (boundsSize.height - frameToCenter.size.height) * 0.5f;
	} else {
		frameToCenter.origin.y = 0;
	}
	
	centerView.frame = frameToCenter;
}

@end
