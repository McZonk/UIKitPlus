#import <UIKit/UIKit.h>

@interface UIInterpolatingMotionEffect (UIPInitWithMinMax)

- (instancetype)initWithKeyPath:(NSString *)keyPath type:(UIInterpolatingMotionEffectType)type minimumRelativeValue:(id)minimumRelativeValue maximumRelativeValue:(id)maximumRelativeValue;

@end
