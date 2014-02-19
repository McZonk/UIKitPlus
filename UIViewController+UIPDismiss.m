//
//  UIViewController+UIPDismiss.m
//  Plus
//
//  Created by Maximilian Christ on 4/22/12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import "UIViewController+UIPDismiss.h"

@implementation UIViewController (UIPDismiss)

- (void)dismissAnimated:(BOOL)animated {
	UIViewController* parentViewController = self.parentViewController;
	if([parentViewController isKindOfClass:[UINavigationController class]]) {
		UINavigationController* navigationController = (UINavigationController*)parentViewController;
		if(navigationController.visibleViewController == self && navigationController.viewControllers.count > 1) {
			[navigationController popViewControllerAnimated:animated];
			return;
		}
	}
	
	[self dismissViewControllerAnimated:animated completion:nil];
}

- (IBAction)animatedDismiss:(id)sender {
	return [self dismissAnimated:YES];
}

- (IBAction)instantDismiss:(id)sender {
	return [self dismissAnimated:NO];
}

@end
