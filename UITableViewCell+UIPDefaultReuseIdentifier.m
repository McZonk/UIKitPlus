#import "UITableViewCell+UIPDefaultReuseIdentifier.h"

@implementation UITableViewCell (UIPDefaultReuseIdentifier)

+ (NSString*)defaultReuseIdentifier
{
	return NSStringFromClass(self);
}

@end
