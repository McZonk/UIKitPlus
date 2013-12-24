//
//  UIButton+UIPLocalization.m
//  Plus
//
//  Created by Maximilian Christ on 7/17/12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import "UIButton+UIPLocalization.h"

#import "NSBundle+UIPLocalization.h"
#import "UIView+UIPLocalization.h"


@implementation UIButton (UIPLocalization)

- (void)localizeWithPrefixCharacter:(unichar)prefix bundle:(NSBundle*)bundle table:(NSString*)table
{
	[super localizeWithPrefixCharacter:prefix bundle:bundle table:table];
	
	if(bundle == nil) {
		bundle = NSBundle.mainBundle;
	}
	
	const UIControlState states[] = {
		UIControlStateNormal,
		UIControlStateSelected,
		UIControlStateHighlighted,
		UIControlStateDisabled,
		// Useful combined statements
		UIControlStateHighlighted | UIControlStateSelected,
	};
	const NSUInteger stateCount = sizeof(states) / sizeof(*states);
	
	for(NSUInteger index = 0; index < stateCount; ++index) {
		UIControlState state = states[index];
		
		NSString* title = [self titleForState:state];
		if(title) {
			NSString* newTitle = [bundle localizedStringWithPrefixCharacter:prefix string:title table:table];
			if(![title isEqualToString:newTitle]) {
				NSAttributedString* attributedTitle = [self attributedTitleForState:state];
				if(attributedTitle){
					// TODO:
				} else {
					[self setTitle:newTitle forState:state];
				}
			}
		}
	}
}

@end
