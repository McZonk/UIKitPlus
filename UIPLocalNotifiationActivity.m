//
//  UIPLocalNotifiationActivity.m
//  AgeCalculator
//
//  Created by Maximilian Christ on 2013-02-06.
//  Copyright (c) 2013 McZonk. All rights reserved.
//

#import "UIPLocalNotifiationActivity.h"

#import "NSBundle+UIPBundle.h"


@interface UIPLocalNotifiationActivity ()

@property (nonatomic, strong) NSArray* notifications;

@end


@implementation UIPLocalNotifiationActivity

- (NSString*)activityTitle {
	return NSLocalizedStringFromTableInBundle(@"ActivityTitle", @"LocalNotificationActivity", NSBundle.UIKitPlusBundle, nil);
}

- (UIImage*)activityImage {
	NSString* path = [NSBundle.UIKitPlusBundle pathForResource:@"LocalNotificationActivity" ofType:@"png"];
	return [UIImage imageWithContentsOfFile:path];
}

- (BOOL)canPerformWithActivityItems:(NSArray*)activityItems {
	for(id activityItem in activityItems) {
		if([activityItem isKindOfClass:[UILocalNotification class]]) {
			return YES;
		}
	}
	
	return NO;
}

- (void)prepareWithActivityItems:(NSArray*)activityItems {
	NSMutableArray* notifications = [NSMutableArray arrayWithCapacity:1];
	
	for(id activityItem in activityItems) {
		if([activityItem isKindOfClass:[UILocalNotification class]]) {
			[notifications addObject:activityItem];
		}
	}
	
	if(notifications.count > 0) {
		self.notifications = notifications;
	}
}

- (void)performActivity {
	for(UILocalNotification* notification in self.notifications) {
		[UIApplication.sharedApplication scheduleLocalNotification:notification];
	}
	
	[self activityDidFinish:YES];
}

@end
