//
//  UITableViewCell+UIPCellCreation.m
//  Plus-iOS
//
//  Created by Maximilian Christ on 2013-02-06.
//  Copyright (c) 2013 mczonk.de. All rights reserved.
//

#import "UITableViewCell+UIPCellCreation.h"

@implementation UITableViewCell (UIPCellCreation)

+ (NSString*)defaultReuseIdentifier {
	return NSStringFromClass(self);
}

+ (instancetype)cell {
	return [self cellWithReuseIdentifier:self.defaultReuseIdentifier bundle:nil];
}

+ (instancetype)cellWithReuseIdentifier:(NSString*)reuseIdentifier {
	return [self cellWithReuseIdentifier:reuseIdentifier bundle:nil];
}

+ (instancetype)cellWithReuseIdentifier:(NSString*)reuseIdentifier bundle:(NSBundle*)bundle {
	UITableViewCell *cell = [self cellFromNibInBundle:bundle];
	if(cell == nil) {
		cell = [[self alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
	}
	
	return cell;
}

+ (instancetype)cellFromNibInBundle:(NSBundle*)bundle {
	if(bundle == nil) {
		bundle = NSBundle.mainBundle;
	}
	
	NSArray* views = [bundle loadNibNamed:NSStringFromClass(self) owner:nil options:nil];
	if(views.count == 0) {
		return nil;
	}
	
	UITableViewCell* cell = [views objectAtIndex:0];
	if(![cell isKindOfClass:self]) {
		return nil;
	}
	
	return cell;
}

@end
