//
//  UIViewController+UIPPresentModalViewControllerWithSize.h
//  TRAUMA
//
//  Created by Maximilian Christ on 5/18/12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (UIPPresentModalViewControllerWithSize)

- (void)presentViewController:(UIViewController*)modalViewController size:(CGSize)size animated:(BOOL)animated completion:(void(^)())completion;

@end
