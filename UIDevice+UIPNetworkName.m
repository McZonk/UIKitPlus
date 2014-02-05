#import "UIDevice+UIPNetworkName.h"

#import <SystemConfiguration/CaptiveNetwork.h>

@implementation UIDevice (UIPNetworkName)

- (NSString *)networkName
{
	NSArray *interfaces = (NSArray *)CFBridgingRelease(CNCopySupportedInterfaces());
	
	for(NSString *interface in interfaces)
	{
		NSDictionary *info = (NSDictionary *)CFBridgingRelease(CNCopyCurrentNetworkInfo((__bridge CFStringRef)(interface)));
		
		NSString *networkName = info[(__bridge NSString *)kCNNetworkInfoKeySSID];
		if(networkName != nil)
		{
			if(networkName.length == 0)
			{
				// when networkName is empty, but present it is usually a personal hotspot
				networkName = NSLocalizedStringWithDefaultValue(@"UIDeviceNetworkNamePersonalHotspot", nil, NSBundle.mainBundle, @"Personal Hotspot", nil);
			}
			
			return networkName;
		}
	}

	// no network found, before display a this string, check the reachabilty before
	return NSLocalizedStringWithDefaultValue(@"UIDeviceNetworkNameUnnamedNetwork", nil, NSBundle.mainBundle, @"Unnamed Network", nil);
}

@end
