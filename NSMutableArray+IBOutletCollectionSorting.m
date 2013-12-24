//
//  NSMutableArray+IBOutletCollectionSorting.m
//  TRAUMA
//
//  Created by Maximilian Christ on 2012-12-09.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import "NSMutableArray+IBOutletCollectionSorting.h"

@implementation NSMutableArray (IBOutletCollectionSorting)

- (void)sortUsingFrameOrigin {
	[self sortUsingComparator:^NSComparisonResult(UIView* view1, UIView* view2) {
		const CGRect frame1 = view1.frame;
		const CGRect frame2 = view2.frame;
		
		if(frame1.origin.y < frame2.origin.y) {
			return NSOrderedAscending;
		} else if(frame1.origin.y > frame2.origin.y) {
			return NSOrderedDescending;
		}
		
		if(frame1.origin.x < frame2.origin.x) {
			return NSOrderedAscending;
		} else if(frame1.origin.x > frame2.origin.x) {
			return NSOrderedDescending;
		}
		
		return NSOrderedSame;
	}];
}

@end
