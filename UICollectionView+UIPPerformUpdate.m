//
//  UICollectionView+UIPPerformUpdate.m
//  Plus-iOS
//
//  Created by Maximilian Christ on 7/14/13.
//  Copyright (c) 2013 mczonk.de. All rights reserved.
//

#import "UICollectionView+UIPPerformUpdate.h"

@implementation UICollectionView (UIPPerformUpdate)

- (void)performBatchUpdatesWithNewItems:(NSArray *)newItems oldItems:(NSArray *)oldItems inSection:(NSInteger)section completion:(void(^)(BOOL finished))completion
{
	@autoreleasepool
	{
		NSUInteger index = 0;
		
		NSMutableArray *insertedIndexPaths = [NSMutableArray arrayWithCapacity:1];
		for(id item in newItems)
		{
			if(![oldItems containsObject:item])
			{
				NSIndexPath *indexPath = [NSIndexPath indexPathForItem:index inSection:section];
				[insertedIndexPaths addObject:indexPath];
			}
			++index;
		}
		
		index = 0;
		
		NSMutableArray *deletedIndexPaths = [NSMutableArray arrayWithCapacity:1];
		for(id item in oldItems)
		{
			if(![newItems containsObject:item])
			{
				NSIndexPath *indexPath = [NSIndexPath indexPathForItem:index inSection:section];
				[deletedIndexPaths addObject:indexPath];
			}
			++index;
		}
		
		index = 0;
		
		NSMutableDictionary *movedIndexPaths = [NSMutableDictionary dictionaryWithCapacity:newItems.count];
		if(newItems != nil && oldItems != nil)
		{
			for(id item in newItems)
			{
				NSUInteger oldIndex = [oldItems indexOfObject:item];
				
				if(oldIndex != NSNotFound && oldIndex != index)
				{
					NSIndexPath *oldIndexPath = [NSIndexPath indexPathForItem:oldIndex inSection:section];
					NSIndexPath *newIndexPath = [NSIndexPath indexPathForItem:index inSection:section];
					
					movedIndexPaths[oldIndexPath] = newIndexPath;
				}
				++index;
			}
		}
		
		@try
		{
			[self performBatchUpdates:^{
				if(insertedIndexPaths.count > 0)
				{
					[self insertItemsAtIndexPaths:insertedIndexPaths];
				}
				
				if(deletedIndexPaths.count > 0)
				{
					[self deleteItemsAtIndexPaths:deletedIndexPaths];
				}
				
				for(NSIndexPath *oldIndexPath in movedIndexPaths)
				{
					NSIndexPath *newIndexPath = movedIndexPaths[oldIndexPath];
					
					[self moveItemAtIndexPath:oldIndexPath toIndexPath:newIndexPath];
				}
			} completion:completion];
		}
		@catch(NSException *e)
		{
			[self reloadData];
		}
	}
}

@end
