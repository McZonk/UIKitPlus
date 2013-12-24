//
//  NSBundle+UIPLocalization.h
//  Plus
//
//  Created by Maximilian Christ on 7/17/12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSBundle (UIPLocalization)

- (NSString*)localizedStringWithPrefixCharacter:(unichar)prefixCharacter string:(NSString*)string table:(NSString*)table;

@end
