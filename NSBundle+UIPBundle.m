//
//  NSBundle+UIPBundle.m
//  Plus-iOS
//
//  Created by Maximilian Christ on 2013-02-06.
//  Copyright (c) 2013 mczonk.de. All rights reserved.
//

#import "NSBundle+UIPBundle.h"

@implementation NSBundle (UIPBundle)

+ (instancetype)UIKitPlusBundle {
	static id bundle = nil;
	
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		NSURL *URL = [[NSBundle mainBundle] URLForResource:@"UIKitPlus" withExtension:@"bundle"];
		bundle = [NSBundle bundleWithURL:URL];
	});
	
	return bundle;
}

@end
