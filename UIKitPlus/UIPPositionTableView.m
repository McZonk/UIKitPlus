//
//  UIPPositionTableView.m
//  Plus-iOS
//
//  Created by Maximilian Christ on 3/25/13.
//  Copyright (c) 2013 mczonk.de. All rights reserved.
//

#import "UIPPositionTableView.h"

#import "UIPPositionTableViewCell.h"

@interface UITableView (ConfigureCellForDisplay)

- (void)_configureCellForDisplay:(UITableViewCell*)cell forIndexPath:(NSIndexPath*)indexPath;

@end

@implementation UIPPositionTableView

- (void)_configureCellForDisplay:(UITableViewCell*)cell forIndexPath:(NSIndexPath*)indexPath {
	if([cell isKindOfClass:UIPPositionTableViewCell.class]) {
		const NSUInteger rowCount = [self.dataSource tableView:self numberOfRowsInSection:indexPath.section];

		UIPPositionTableViewCell* positionCell = (UIPPositionTableViewCell*)cell;
		
		if(rowCount == 1) {
			positionCell.cellPosition = UIPPositionTableViewCellSingle;
		} else {
			const NSUInteger row = indexPath.row;
			
			if(row == 0) {
				positionCell.cellPosition = UIPPositionTableViewCellTop;
			} else if(row + 1 == rowCount) {
				positionCell.cellPosition = UIPPositionTableViewCellBottom;
			} else {
				positionCell.cellPosition = UIPPositionTableViewCellMiddle;
			}
		}
	}
	
	[super _configureCellForDisplay:cell forIndexPath:indexPath];
}

@end
