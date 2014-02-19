//
//  UIApplication+UIPInstallationIdentifier.h
//  Plus-iOS
//
//  Created by Maximilian Christ on 7/14/13.
//  Copyright (c) 2013 mczonk.de. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIApplication (UIPInstallationIdentifier)

/**
 * Retuns a unique identifier for the current installation of this application.
 * This identifier will differ if the installation is reinstalled.
 */
- (NSString *)installationIdentifier;

@end
