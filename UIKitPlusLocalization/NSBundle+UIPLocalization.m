//
//  NSBundle+UIPLocalization.m
//  Plus
//
//  Created by Maximilian Christ on 7/17/12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import "NSBundle+UIPLocalization.h"

@implementation NSBundle (UIPLocalization)

- (NSString*)localizedStringWithPrefixCharacter:(unichar)prefixCharacter string:(NSString*)string table:(NSString*)table {
	if(string.length == 0) {
		return string;
	}
	
	if([string characterAtIndex:0] != prefixCharacter) {
		return string;
	}
	
	return [self localizedStringForKey:string value:string table:table];
}

@end
