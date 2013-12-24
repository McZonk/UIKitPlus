//
//  UIView+UIPRenderToImage.m
//  TRAUMA
//
//  Created by Maximilian Christ on 20.02.12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import "UIView+UIPRenderToImage.h"

#import <QuartzCore/QuartzCore.h>


@implementation UIView (UIPRenderToImage)

- (UIImage*)renderToImage {
	return [self renderToImageWithSize:self.bounds.size];
}

- (UIImage*)renderToImageWithSize:(CGSize)size {
	UIGraphicsBeginImageContextWithOptions(size, NO, self.contentScaleFactor);
	
	[self.layer renderInContext:UIGraphicsGetCurrentContext()];
	
	UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
	
	UIGraphicsEndImageContext();
	
	return image;
}

@end
