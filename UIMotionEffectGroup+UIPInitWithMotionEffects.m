#import "UIMotionEffectGroup+UIPInitWithMotionEffects.h"

@implementation UIMotionEffectGroup (UIPInitWithMotionEffects)

- (instancetype)initWithMotionEffects:(NSArray *)motionEffects
{
	self = [super init];
	if(self != nil)
	{
		self.motionEffects = motionEffects;
	}
	return self;
}

@end
