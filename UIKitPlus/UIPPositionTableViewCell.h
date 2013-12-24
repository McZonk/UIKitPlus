//
//  UIPPositionTableViewCell.h
//  Plus-iOS
//
//  Created by Maximilian Christ on 3/25/13.
//  Copyright (c) 2013 mczonk.de. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum UIPPositionTableViewCellPosition {
	UIPPositionTableViewCellInvalid = 0,
	UIPPositionTableViewCellSingle,
	UIPPositionTableViewCellTop,
	UIPPositionTableViewCellMiddle,
	UIPPositionTableViewCellBottom,
} UIPPositionTableViewCellPosition;


@interface UIPPositionTableViewCell : UITableViewCell

@property (nonatomic, assign) UIPPositionTableViewCellPosition cellPosition;

@end
