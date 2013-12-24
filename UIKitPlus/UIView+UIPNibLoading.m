//
//  UIView+UIPNibLoading.m
//  Plus-iOS
//
//  Created by Maximilian Christ on 3/31/13.
//  Copyright (c) 2013 mczonk.de. All rights reserved.
//

#import "UIView+UIPNibLoading.h"

@implementation UIView (UIPNibLoading)

+ (instancetype)nibView {
	return [self nibViewWithBundle:nil];
}

+ (instancetype)nibViewWithBundle:(NSBundle*)bundle {
	if(bundle == nil) {
		bundle = NSBundle.mainBundle;
	}
	
	UINib* nib = [UINib nibWithNibName:NSStringFromClass(self) bundle:bundle];
	return [self nibViewWithNib:nib];
}

+ (instancetype)nibViewWithNib:(UINib*)nib {
	NSArray* views = [nib instantiateWithOwner:nil options:nil];
	if(views.count == 0) {
		return nil;
	}
	
	UIView* view = views[0];
	if(![view isKindOfClass:self]) {
		return nil;
	}
	
	return view;
}

@end
