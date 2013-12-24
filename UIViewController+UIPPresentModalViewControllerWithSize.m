//
//  UIViewController+UIPPresentModalViewControllerWithSize.m
//  TRAUMA
//
//  Created by Maximilian Christ on 5/18/12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import "UIViewController+UIPPresentModalViewControllerWithSize.h"

@implementation UIViewController (UIPPresentModalViewControllerWithSize)

- (void)presentViewController:(UIViewController*)modalViewController size:(CGSize)size animated:(BOOL)animated completion:(void(^)())completion {
	[self presentViewController:modalViewController animated:animated completion:completion];
	
	if(modalViewController.modalPresentationStyle == UIModalPresentationFormSheet) {
		modalViewController.view.superview.bounds = CGRectMake(0, 0, size.width, size.height);
	}
}

@end
