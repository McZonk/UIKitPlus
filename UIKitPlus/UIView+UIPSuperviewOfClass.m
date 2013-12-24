//
//  UIView+UIPSuperviewOfClass.m
//  Plus-iOS
//
//  Created by Maximilian Christ on 4/1/13.
//  Copyright (c) 2013 mczonk.de. All rights reserved.
//

#import "UIView+UIPSuperviewOfClass.h"

@implementation UIView (UIPSuperviewOfClass)

- (UIView*)superviewOfClass:(Class)cls {
	for(UIView* view = self.superview; view != nil; view = view.superview) {
		if([view isKindOfClass:cls]) {
			return view;
		}
	}
	return nil;
}

@end
