#import <UIKit/UIKit.h>

@interface UIActionSheet (UIPIdentifier)

- (NSInteger)addButtonWithTitle:(NSString *)title identifier:(NSString *)identifier;

- (NSString *)identifierForButtonAtIndex:(NSInteger)index;

@end
