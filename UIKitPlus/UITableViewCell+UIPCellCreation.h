//
//  UITableViewCell+UIPCellCreation.h
//  Plus-iOS
//
//  Created by Maximilian Christ on 2013-02-06.
//  Copyright (c) 2013 mczonk.de. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableViewCell (UIPCellCreation)

+ (NSString*)defaultReuseIdentifier;

+ (instancetype)cell;

+ (instancetype)cellWithReuseIdentifier:(NSString*)reuseIdentifier;
+ (instancetype)cellWithReuseIdentifier:(NSString*)reuseIdentifier bundle:(NSBundle*)bundle;

@end
