//
//  UIApplication+UIPLocalNotification.m
//  Plus-iOS
//
//  Created by Maximilian Christ on 2013-02-06.
//  Copyright (c) 2013 mczonk.de. All rights reserved.
//

#import "UIApplication+UIPLocalNotification.h"

#import <ObjectiveCPlus/NSObject+OCPSwizzle.h>


NSString * const UIPApplicationDidScheduleLocalNotificationNotification = @"UIPApplicationDidScheduleLocalNotificationNotification";
NSString * const UIPApplicationDidCancelLocalNotificationNotification = @"UIPApplicationDidCancelLocalNotificationNotification";
NSString * const UIPApplicationDidCancelAllLocalNotificationsNotification = @"UIPApplicationDidCancelAllLocalNotificationsNotification";

NSString * const UIPApplicationLocalNotificationKey = @"UIPApplicationLocalNotification";


@implementation UIApplication (UIPLocalNotification)

+ (BOOL)setupLocalNotificationNotifications {
	[self exchangeSelector:@selector(scheduleLocalNotification:) withSelector:@selector(UIP_scheduleLocalNotification:)];
	[self exchangeSelector:@selector(cancelLocalNotification:) withSelector:@selector(UIP_cancelLocalNotification:)];
	[self exchangeSelector:@selector(cancelAllLocalNotifications) withSelector:@selector(UIP_cancelAllLocalNotifications)];
	
	return YES;
}

- (void)UIP_scheduleLocalNotification:(UILocalNotification*)notification {
	[self UIP_scheduleLocalNotification:notification];
	
	NSDictionary* userInfo = @{ UIPApplicationLocalNotificationKey : notification };
	[NSNotificationCenter.defaultCenter postNotificationName:UIPApplicationDidScheduleLocalNotificationNotification object:self userInfo:userInfo];
}

- (void)UIP_cancelLocalNotification:(UILocalNotification*)notification {
	[self UIP_cancelLocalNotification:notification];
	
	NSDictionary* userInfo = @{ UIPApplicationLocalNotificationKey : notification };
	[NSNotificationCenter.defaultCenter postNotificationName:UIPApplicationDidCancelLocalNotificationNotification object:self userInfo:userInfo];
}

- (void)UIP_cancelAllLocalNotifications {
	[self UIP_cancelAllLocalNotifications];
	
	[NSNotificationCenter.defaultCenter postNotificationName:UIPApplicationDidCancelAllLocalNotificationsNotification object:self userInfo:nil];
}

@end
