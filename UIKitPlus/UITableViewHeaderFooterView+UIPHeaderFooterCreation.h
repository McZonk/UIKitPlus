//
//  UITableViewHeaderFooterView+UIPHeaderFooterCreation.h
//  Plus-iOS
//
//  Created by Maximilian Christ on 3/31/13.
//  Copyright (c) 2013 mczonk.de. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableViewHeaderFooterView (UIPHeaderFooterCreation)

+ (NSString*)defaultReuseIdentifier;

+ (instancetype)headerFooterView;
+ (instancetype)headerFooterViewWithReuseIdentifer:(NSString*)reuseIdentifier;

@end
