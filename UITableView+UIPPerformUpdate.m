//
//  UITableView+UIPPerformUpdate.m
//  DataMan
//
//  Created by Maximilian Christ on 3/1/12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import "UITableView+UIPPerformUpdate.h"

@implementation UITableView (UIPPerformUpdate)

- (void)performBatchUpdatesWithNewItems:(NSArray *)newItems oldItems:(NSArray *)oldItems inSection:(NSInteger)section
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
		};
		
		@try
		{
			[self beginUpdates];
			
			if(insertedIndexPaths.count > 0)
			{
				[self insertRowsAtIndexPaths:insertedIndexPaths withRowAnimation:UITableViewRowAnimationAutomatic];
			}
			
			if(deletedIndexPaths.count > 0)
			{
				[self deleteRowsAtIndexPaths:deletedIndexPaths withRowAnimation:UITableViewRowAnimationAutomatic];
			}
			
			for(NSIndexPath *oldIndexPath in movedIndexPaths)
			{
				NSIndexPath *newIndexPath = movedIndexPaths[oldIndexPath];
				
				[self moveRowAtIndexPath:oldIndexPath toIndexPath:newIndexPath];
			}
			
			[self endUpdates];
		}
		@catch(NSException *e)
		{
			[self reloadData];
		}
	}
}

@end
