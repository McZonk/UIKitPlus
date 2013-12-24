//
//  UIView+UIPAnimationCurve.m
//  Plus-iOS
//
//  Created by Maximilian Christ on 3/30/13.
//  Copyright (c) 2013 mczonk.de. All rights reserved.
//

#import "UIView+UIPAnimationCurve.h"

@implementation UIView (UIPAnimationCurve)

+ (UIViewAnimationOptions)animationOptionForAnimationCurve:(UIViewAnimationCurve)curve {
    switch(curve) {
        case UIViewAnimationCurveEaseInOut :
            return UIViewAnimationOptionCurveEaseInOut;
        case UIViewAnimationCurveEaseIn :
            return UIViewAnimationOptionCurveEaseIn;
        case UIViewAnimationCurveEaseOut :
            return UIViewAnimationOptionCurveEaseOut;
        case UIViewAnimationCurveLinear :
            return UIViewAnimationOptionCurveLinear;
    }

    return UIViewAnimationOptionCurveEaseInOut; // is '0'
}

@end
