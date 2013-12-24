//
//  UIPPositionTableViewCell.m
//  Plus-iOS
//
//  Created by Maximilian Christ on 3/25/13.
//  Copyright (c) 2013 mczonk.de. All rights reserved.
//

#import "UIPPositionTableViewCell.h"

@implementation UIPPositionTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString*)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self != nil) {
		[self setupUIPPositionTableViewCell];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)coder {
	self = [super initWithCoder:coder];
	if(self != nil) {
		[self setupUIPPositionTableViewCell];
	}
	return self;
}

- (void)setupUIPPositionTableViewCell {
	self.cellPosition = UIPPositionTableViewCellInvalid;
}

@end
