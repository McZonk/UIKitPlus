//
//  UIView+UIPLocalization.m
//  Plus
//
//  Created by Maximilian Christ on 5/30/12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import "UIView+UIPLocalization.h"

#import "UIView+UIPAccessibilityLocalization.h"

@implementation UIView (UIPLocalization)

static unichar defaultLocalizationPrefix = 0x2711; // ✑

+ (unichar)defaultLocalizationPrefix {
	return defaultLocalizationPrefix;
}

+ (void)setDefaultLocalizationPrefix:(unichar)prefix {
	defaultLocalizationPrefix = prefix;
}

- (void)localize {
	[self localizeWithPrefixCharacter:defaultLocalizationPrefix bundle:nil table:nil];
}

- (void)localizeWithPrefixCharacter:(unichar)prefix bundle:(NSBundle*)bundle table:(NSString*)table {
	if(bundle == nil) {
		bundle = NSBundle.mainBundle;
	}
	
	[self accessibilityLocalizeWithPrefixCharacter:prefix bundle:bundle table:table];
	
	for(UIView* subview in self.subviews) {
		[subview localizeWithPrefixCharacter:prefix bundle:bundle table:table];
	}
}

@end
