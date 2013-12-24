//
//  NSBundle+UIKitBundle.m
//  Plus
//
//  Created by Maximilian Christ on 6/4/12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import "NSBundle+UIPUIKitBundle.h"

@implementation NSBundle (UIPUIKitBundle)

+ (NSBundle*)UIKitBundle {
	static NSBundle* bundle = nil;
	
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		NSString* identifier = [NSString stringWithFormat:@"com.a%@e.UI%@", @"ppl", @"Kit"];
		bundle = [NSBundle bundleWithIdentifier:identifier];
		
		if(bundle == nil) {
			// we use main bundle as fallback
			bundle = NSBundle.mainBundle;
		}
	});
	
	return bundle;
}

@end
