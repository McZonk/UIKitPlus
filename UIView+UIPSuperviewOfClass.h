//
//  UIView+UIPSuperviewOfClass.h
//  Plus-iOS
//
//  Created by Maximilian Christ on 4/1/13.
//  Copyright (c) 2013 mczonk.de. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (UIPSuperviewOfClass)

- (UIView*)superviewOfClass:(Class)cls;

@end
