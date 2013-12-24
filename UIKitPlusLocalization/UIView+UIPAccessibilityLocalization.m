//
//  UIView+UIPAccessibilityLocalization.m
//  Vibematch
//
//  Created by Maximilian Christ on 2012-11-26.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import "UIView+UIPAccessibilityLocalization.h"

#import "NSBundle+UIPLocalization.h"


@implementation UIView (UIPAccessibilityLocalization)

- (void)accessibilityLocalizeWithPrefixCharacter:(unichar)prefix bundle:(NSBundle*)bundle table:(NSString*)table {
	if(bundle == nil) {
		bundle = NSBundle.mainBundle;
	}
	
	{
		NSString* hint = self.accessibilityHint;
		if(hint) {
			self.accessibilityHint = [bundle localizedStringWithPrefixCharacter:prefix string:hint table:table];
		}
	}
	
	{
		NSString* label = self.accessibilityLabel;
		if(label) {
			self.accessibilityLabel = [bundle localizedStringWithPrefixCharacter:prefix string:label table:table];
		}
	}
	
	{
		NSString* value = self.accessibilityValue;
		if(value) {
			self.accessibilityValue = [bundle localizedStringWithPrefixCharacter:prefix string:value table:table];
		}
	}
}

@end
