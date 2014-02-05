#import "UIFont+UIPFonts.h"

@implementation UIFont (UIPFonts)

+ (NSDictionary *)fontFamiliesAndNames
{
	NSMutableDictionary *output = [NSMutableDictionary dictionary];
	
	NSArray *familyNames = UIFont.familyNames;
	for(NSString *familyName in familyNames)
	{
		output[familyName] = [UIFont fontNamesForFamilyName:familyName];
	}
	
	return output;
}

@end
