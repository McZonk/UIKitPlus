#import "UIAlertView+UIPUserInfo.h"

#import <objc/runtime.h>


static const void * const UserInfoKey = (void *)&UserInfoKey;


@implementation UIAlertView (UIPUserInfo)

- (NSDictionary *)userInfo
{
	return objc_getAssociatedObject(self, UserInfoKey);
}

- (void)setUserInfo:(NSDictionary *)userInfo
{
	objc_setAssociatedObject(self, UserInfoKey, userInfo, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
