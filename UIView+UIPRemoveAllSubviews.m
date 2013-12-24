//
//  UIView+UIPRemoveAllSubviews.m
//  Plus-iOS
//
//  Created by Maximilian Christ on 2013-02-06.
//  Copyright (c) 2013 mczonk.de. All rights reserved.
//

#import "UIView+UIPRemoveAllSubviews.h"

@implementation UIView (UIPRemoveAllSubviews)

- (void)removeAllSubviews {
	while(YES) {
		UIView* view = self.subviews.lastObject;
		if(view == nil) {
			break;
		}

		[view removeFromSuperview];
	}
}

@end
