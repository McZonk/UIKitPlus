//
//  UIApplication+UIPLocalNotification.h
//  Plus-iOS
//
//  Created by Maximilian Christ on 2013-02-06.
//  Copyright (c) 2013 mczonk.de. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString * const UIPApplicationDidScheduleLocalNotificationNotification;
extern NSString * const UIPApplicationDidCancelLocalNotificationNotification;
extern NSString * const UIPApplicationDidCancelAllLocalNotificationsNotification;

extern NSString * const UIPApplicationLocalNotificationKey;


@interface UIApplication (UIPLocalNotification)

+ (BOOL)setupLocalNotificationNotifications;

@end
