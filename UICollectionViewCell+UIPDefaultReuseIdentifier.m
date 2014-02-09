#import "UICollectionViewCell+UIPDefaultReuseIdentifier.h"

@implementation UICollectionViewCell (UIPDefaultReuseIdentifier)

+ (NSString *)defaultReuseIdentifier
{
	return NSStringFromClass(self);
}

@end
