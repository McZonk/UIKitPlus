//
//  UITableViewHeaderFooterView+UIPHeaderFooterCreation.m
//  Plus-iOS
//
//  Created by Maximilian Christ on 3/31/13.
//  Copyright (c) 2013 mczonk.de. All rights reserved.
//

#import "UITableViewHeaderFooterView+UIPHeaderFooterCreation.h"

@implementation UITableViewHeaderFooterView (UIPHeaderFooterCreation)

+ (NSString*)defaultReuseIdentifier {
	return NSStringFromClass(self);
}

+ (instancetype)headerFooterView {
	return [self headerFooterViewWithReuseIdentifer:self.defaultReuseIdentifier];
}

+ (instancetype)headerFooterViewWithReuseIdentifer:(NSString*)reuseIdentifier {
	UITableViewHeaderFooterView *headerFooterView = [self headerFooterViewFromNibInBundle:nil];
	if(headerFooterView == nil) {
		headerFooterView = [[self alloc] initWithReuseIdentifier:reuseIdentifier];
	}
	
	return headerFooterView;
}

+ (instancetype)headerFooterViewFromNibInBundle:(NSBundle*)bundle {
	if(bundle == nil) {
		bundle = NSBundle.mainBundle;
	}
	
	NSArray* views = [bundle loadNibNamed:NSStringFromClass(self) owner:nil options:nil];
	if(views.count == 0) {
		return nil;
	}
	
	UITableViewHeaderFooterView* headerFooterView = [views objectAtIndex:0];
	if(![headerFooterView isKindOfClass:self]) {
		return nil;
	}
	
	return headerFooterView;
}

@end
