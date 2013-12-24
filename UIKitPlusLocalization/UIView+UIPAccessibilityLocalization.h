//
//  UIView+UIPAccessibilityLocalization.h
//  Vibematch
//
//  Created by Maximilian Christ on 2012-11-26.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (UIPAccessibilityLocalization)

- (void)accessibilityLocalizeWithPrefixCharacter:(unichar)prefix bundle:(NSBundle*)bundle table:(NSString*)table;

@end
