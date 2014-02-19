//
//  UICollectionView+UIPPerformUpdate.h
//  Plus-iOS
//
//  Created by Maximilian Christ on 7/14/13.
//  Copyright (c) 2013 mczonk.de. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionView (UIPPerformUpdate)

- (void)performBatchUpdatesWithNewItems:(NSArray *)newItems oldItems:(NSArray *)oldItems inSection:(NSInteger)section completion:(void(^)(BOOL finished))completion;

@end
