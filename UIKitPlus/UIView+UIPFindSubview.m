//
//  UIView+FindSubview.m
//  TRAUMA
//
//  Created by Maximilian Christ on 5/18/12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import "UIView+UIPFindSubview.h"

@implementation UIView (UIPFindSubview)

- (UIView*)findSubviewOfClass:(Class)clss {
	for(UIView* subview in self.subviews) {
		if([subview isKindOfClass:clss]) {
			return subview;
		}
	}
	
	for(UIView* subview in self.subviews){
		UIView* resultView = [subview findSubviewOfClass:clss];
		if(resultView) {
			return resultView;
		}
	}
	
	return nil;
}

- (NSArray*)findSubviewsOfClass:(Class)clss {
	NSMutableArray* results = [NSMutableArray arrayWithCapacity:0];
	
	for(UIView* subview in self.subviews) {
		if([subview isKindOfClass:clss]) {
			[results addObject:subview];
		}
	}
	
	for(UIView* subview in self.subviews) {
		NSArray* subviewResults = [subview findSubviewsOfClass:clss];
		if(subviewResults) {
			[results addObjectsFromArray:subviewResults];
		}
	}
	
	return results.count > 0 ? results : nil;
}

@end
