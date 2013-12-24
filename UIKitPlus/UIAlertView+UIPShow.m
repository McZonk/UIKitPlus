#import "UIAlertView+UIPShow.h"

@implementation UIAlertView (UIPShow)

+ (void)showAlertViewWithTitle:(NSString*)title message:(NSString*)message cancelButtonTitle:(NSString*)cancelButtonTitle {
	[[[self alloc] initWithTitle:title message:message delegate:nil cancelButtonTitle:cancelButtonTitle otherButtonTitles:nil] show];
}

@end
