#import "UIInterpolatingMotionEffect+UIPInitWithMinMax.h"

@implementation UIInterpolatingMotionEffect (UIPInitWithMinMax)

- (instancetype)initWithKeyPath:(NSString *)keyPath type:(UIInterpolatingMotionEffectType)type minimumRelativeValue:(id)minimumRelativeValue maximumRelativeValue:(id)maximumRelativeValue
{
	self = [self initWithKeyPath:keyPath type:type];
	if(self != nil)
	{
		self.minimumRelativeValue = minimumRelativeValue;
		self.maximumRelativeValue = maximumRelativeValue;
	}
	return self;
}

@end
