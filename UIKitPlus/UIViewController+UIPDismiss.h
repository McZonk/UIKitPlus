//
//  UIViewController+UIPDismiss.h
//  Plus
//
//  Created by Maximilian Christ on 4/22/12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (UIPDismiss)

- (void)dismissAnimated:(BOOL)animated;

- (IBAction)animatedDismiss:(id)sender;
- (IBAction)instantDismiss:(id)sender;

@end
