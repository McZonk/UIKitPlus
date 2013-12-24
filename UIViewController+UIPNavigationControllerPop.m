//
//  UIViewController+UIPNavigationControllerPop.m
//  Plus
//
//  Created by Maximilian Christ on 7/28/12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import "UIViewController+UIPNavigationControllerPop.h"

@implementation UIViewController (UIPNavigationControllerPop)

- (IBAction)navigationControllerAnimatedPopViewController:(id)sender {
	[self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)navigationControllerInstantPopViewController:(id)sender {
	[self.navigationController popViewControllerAnimated:NO];
}

- (IBAction)navigationControllerAnimatedPopToRootViewController:(id)sender {
	[self.navigationController popToRootViewControllerAnimated:YES];
}

- (IBAction)navigationControllerInstantPopToRootViewController:(id)sender {
	[self.navigationController popToRootViewControllerAnimated:NO];
}

@end
