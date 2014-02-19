//
//  UITableView+UIPPerformUpdate.h
//  DataMan
//
//  Created by Maximilian Christ on 3/1/12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (UIPPerformUpdate)

- (void)performBatchUpdatesWithNewItems:(NSArray *)newItems oldItems:(NSArray *)oldItems inSection:(NSInteger)section;

@end
