#import "UIWebView+UIPTitle.h"

@implementation UIWebView (UIPTitle)

- (NSString *)title
{
	NSString *title = [self stringByEvaluatingJavaScriptFromString:@"document.title"];
	return title;
}

@end
