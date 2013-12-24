//
//  UILabel+UIPLocalization.h
//  Plus
//
//  Created by Maximilian Christ on 7/16/12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (UIPLocalization)

- (void)localizeWithPrefixCharacter:(unichar)prefix bundle:(NSBundle*)bundle table:(NSString*)table;

@end
