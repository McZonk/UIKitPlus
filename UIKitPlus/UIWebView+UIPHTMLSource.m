//
//  UIWebView+UIPHTMLSource.m
//  Plus-iOS
//
//  Created by Maximilian Christ on 2013-02-06.
//  Copyright (c) 2013 mczonk.de. All rights reserved.
//

#import "UIWebView+UIPHTMLSource.h"

@implementation UIWebView (UIPSourceCode)

- (NSString*)HTMLSource {
	return [self stringByEvaluatingJavaScriptFromString:@"document.getElementsByTagName('html')[0].outerHTML"];
}

@end
