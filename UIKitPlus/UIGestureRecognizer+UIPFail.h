//
//  UIGestureRecognizer+UIPFail.h
//  Plus-iOS
//
//  Created by Maximilian Christ on 2013-02-10.
//  Copyright (c) 2013 mczonk.de. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIGestureRecognizer (UIPFail)

/**
 * Causes a gesture recognizer to fail
 */
- (void)fail;

/**
 * Causes a gesture recognizer to cancel
 */
- (void)cancel;

@end
