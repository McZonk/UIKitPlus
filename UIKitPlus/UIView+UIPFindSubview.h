//
//  UIView+FindSubview.h
//  TRAUMA
//
//  Created by Maximilian Christ on 5/18/12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (UIPFindSubview)

- (UIView*)findSubviewOfClass:(Class)clss;

- (NSArray*)findSubviewsOfClass:(Class)clss;

@end
