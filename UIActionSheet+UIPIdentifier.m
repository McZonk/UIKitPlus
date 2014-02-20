#import "UIActionSheet+UIPIdentifier.h"

#import <objc/runtime.h>

static const void * const ButtonIdentifiersKey = (void *)&ButtonIdentifiersKey;

@implementation UIActionSheet (UIPIdentifier)

- (NSMutableDictionary *)buttonIdentifiers
{
	NSMutableDictionary *buttonIdentifiers = objc_getAssociatedObject(self, ButtonIdentifiersKey);
	if(buttonIdentifiers == nil)
	{
		buttonIdentifiers = [[NSMutableDictionary alloc] init];
		objc_setAssociatedObject(self, ButtonIdentifiersKey, buttonIdentifiers, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
	}
	
	return buttonIdentifiers;
}

- (NSInteger)addButtonWithTitle:(NSString *)title identifier:(NSString *)identifier
{
	NSInteger index = [self addButtonWithTitle:title];
	
	if(identifier != nil)
	{
		self.buttonIdentifiers[@(index)] = identifier;
	}
	
	return index;
}

- (NSString *)identifierForButtonAtIndex:(NSInteger)index
{
	return self.buttonIdentifiers[@(index)];
}

@end
