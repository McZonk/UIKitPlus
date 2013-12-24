//
//  UIViewController+UIPNavigationControllerPop.h
//  Plus
//
//  Created by Maximilian Christ on 7/28/12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (UIPNavigationControllerPop)

- (IBAction)navigationControllerAnimatedPopViewController:(id)sender;
- (IBAction)navigationControllerInstantPopViewController:(id)sender;

- (IBAction)navigationControllerAnimatedPopToRootViewController:(id)sender;
- (IBAction)navigationControllerInstantPopToRootViewController:(id)sender;

@end
