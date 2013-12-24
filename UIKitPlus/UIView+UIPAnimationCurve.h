//
//  UIView+UIPAnimationCurve.h
//  Plus-iOS
//
//  Created by Maximilian Christ on 3/30/13.
//  Copyright (c) 2013 mczonk.de. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (UIPAnimationCurve)

+ (UIViewAnimationOptions)animationOptionForAnimationCurve:(UIViewAnimationCurve)curve;

@end
