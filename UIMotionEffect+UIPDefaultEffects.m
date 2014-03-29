#import "UIMotionEffect+UIPDefaultEffects.h"

#import "UIInterpolatingMotionEffect+UIPInitWithMinMax.h"
#import "UIMotionEffectGroup+UIPInitWithMotionEffects.h"


@implementation UIMotionEffect (UIPDefaultEffects)

+ (instancetype)motionEffectWithTiltAroundCenterByRelativeValue:(CGFloat)value
{
	return [[UIMotionEffectGroup alloc] initWithMotionEffects:@[
		[[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x" type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis minimumRelativeValue:@(-value) maximumRelativeValue:@(value)],
		[[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y" type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis minimumRelativeValue:@(-value) maximumRelativeValue:@(value)],
	]];
}

@end
