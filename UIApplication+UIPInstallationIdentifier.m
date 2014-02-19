//
//  UIApplication+UIPInstallationIdentifier.m
//  Plus-iOS
//
//  Created by Maximilian Christ on 7/14/13.
//  Copyright (c) 2013 mczonk.de. All rights reserved.
//

#import "UIApplication+UIPInstallationIdentifier.h"

@implementation UIApplication (UIPInstallationIdentifier)

static NSString * const UIPInstallationIdentifier = @"de.mczonk.InstallationIdentifier";

- (NSString *)installationIdentifier
{
	NSUserDefaults *userDefaults = NSUserDefaults.standardUserDefaults;
	
	NSString *installationIdentifier = [userDefaults objectForKey:UIPInstallationIdentifier];
	if(installationIdentifier == nil)
	{
		NSUUID *UUID = NSUUID.UUID;
		installationIdentifier = UUID.UUIDString;
		
		[userDefaults setObject:installationIdentifier forKey:UIPInstallationIdentifier];
	}
	
	return installationIdentifier;
}

@end
