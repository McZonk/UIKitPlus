//
//  UIGestureRecognizer+UIPFail.m
//  Plus-iOS
//
//  Created by Maximilian Christ on 2013-02-10.
//  Copyright (c) 2013 mczonk.de. All rights reserved.
//

#import "UIGestureRecognizer+UIPFail.h"

#import <UIKit/UIGestureRecognizerSubclass.h>

@implementation UIGestureRecognizer (UIPFail)

- (void)fail {
	self.state = UIGestureRecognizerStateFailed;
}

- (void)cancel {
	self.state = UIGestureRecognizerStateCancelled;
}

@end
