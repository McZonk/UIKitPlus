#import "UIAlertView+UIPButtonContext.h"

#import <objc/runtime.h>


@implementation UIAlertView (UIPButtonContext)

- (NSInteger)addButtonWithTitle:(NSString *)title context:(void *)context
{
	NSInteger index = [self addButtonWithTitle:title];
	
	objc_setAssociatedObject(self, (const void *)index, [NSValue valueWithPointer:context], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
	
	return index;
}

- (void *)buttonContextAtIndex:(NSInteger)index
{
	NSValue *contextValue = objc_getAssociatedObject(self, (const void *)index);
	
	if(![contextValue isKindOfClass:NSValue.class])
	{
		return NULL;
	}
	
	return contextValue.pointerValue;
}

@end
