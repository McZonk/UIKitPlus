//
//  UIView+UIPNibLoading.h
//  Plus-iOS
//
//  Created by Maximilian Christ on 3/31/13.
//  Copyright (c) 2013 mczonk.de. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (UIPNibLoading)

/**
 * calls nibViewWithBundle:nil
 */
+ (instancetype)nibView;

/**
 * tries to load a $(classname).nib
 */
+ (instancetype)nibViewWithBundle:(NSBundle*)bundle;

/**
 * loads the first view from a nib
 * checks if the view is a member of class
 */
+ (instancetype)nibViewWithNib:(UINib*)nib;

@end
