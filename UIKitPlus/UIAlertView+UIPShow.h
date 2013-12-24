#import <UIKit/UIKit.h>

@interface UIAlertView (UIPShow)

/**
 * Shows an UIAlertView without button feedback
 */
+ (void)showAlertViewWithTitle:(NSString*)title message:(NSString*)message cancelButtonTitle:(NSString*)cancelButtonTitle;

@end
