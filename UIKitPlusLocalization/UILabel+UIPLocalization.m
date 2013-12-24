//
//  UILabel+UIPLocalization.m
//  Plus
//
//  Created by Maximilian Christ on 7/16/12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import "UILabel+UIPLocalization.h"

#import "NSBundle+UIPLocalization.h"

@implementation UILabel (UIPLocalization)

- (void)localizeWithPrefixCharacter:(unichar)prefix bundle:(NSBundle*)bundle table:(NSString*)table {
	if(bundle == nil) {
		bundle = NSBundle.mainBundle;
	}
	
	NSString* text = [bundle localizedStringWithPrefixCharacter:prefix string:self.text table:table];
	if(![self.text isEqualToString:text]) {
		// TODO: attributedString
		self.text = text;
	}
}

@end
