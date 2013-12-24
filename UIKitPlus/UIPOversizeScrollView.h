//
//  UIPOversizeScrollView.h
//  Plus
//
//  Created by Maximilian Christ on 5/30/12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIPOversizeScrollView : UIScrollView

@property (nonatomic, assign) UIEdgeInsets oversizeInsets;

- (void)setOversizeInsetsBySuperviewFrame;

@end
