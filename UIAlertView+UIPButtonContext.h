#import <UIKit/UIKit.h>

@interface UIAlertView (UIPButtonContext)

- (NSInteger)addButtonWithTitle:(NSString *)title context:(void *)context;

- (void *)buttonContextAtIndex:(NSInteger)index;

@end
