//
//  UIButton+UIPLocalization.h
//  Plus
//
//  Created by Maximilian Christ on 7/17/12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (UIPLocalization)

- (void)localizeWithPrefixCharacter:(unichar)prefix bundle:(NSBundle*)bundle table:(NSString*)table;

@end
