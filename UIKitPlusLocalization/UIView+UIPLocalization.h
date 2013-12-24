//
//  UIView+UIPLocalization.h
//  Plus
//
//  Created by Maximilian Christ on 5/30/12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (UIPLocalization)

+ (unichar)defaultLocalizationPrefix;
+ (void)setDefaultLocalizationPrefix:(unichar)prefix;

- (void)localize;

- (void)localizeWithPrefixCharacter:(unichar)prefix bundle:(NSBundle*)bundle table:(NSString*)table;

@end
