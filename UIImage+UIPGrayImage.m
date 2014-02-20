//
//  UIImage+UIPGrayImage.m
//  PhotoPresenter
//
//  Created by Maximilian Christ on 8/14/13.
//  Copyright (c) 2013 McZonk. All rights reserved.
//

#import "UIImage+UIPGrayImage.h"

@implementation UIImage (UIPGrayImage)

- (UIImage *)grayImage
{
	return [self grayImageWithBackgroundColor:[UIColor colorWithWhite:1.0 alpha:0.0]];
}

- (UIImage *)grayImageWithBackgroundColor:(UIColor *)color
{
	CGSize size = self.size;
	
	CGFloat scale = self.scale;
	size.width *= scale;
	size.height *= scale;
	
	CGRect frame = CGRectMake(0.0f, 0.0f, size.width, size.height);
	
	UIImageOrientation orientation = self.imageOrientation;
	
	CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceGray();
	
	CGContextRef context = CGBitmapContextCreate(nil, size.width, size.height, 8, 0, colorSpace, (kCGImageAlphaNone & kCGBitmapAlphaInfoMask)|(kCGBitmapByteOrderMask & kCGBitmapByteOrderDefault));
		
	CGContextSetBlendMode(context, kCGBlendModeCopy);
	CGContextDrawImage(context, frame, self.CGImage);
	
	if(CGColorGetAlpha(color.CGColor) > 0.0)
	{
		CGContextSetBlendMode(context, kCGBlendModeNormal);
		CGContextSetFillColorWithColor(context, color.CGColor);
		CGContextFillRect(context, frame);
	}

	CGImageRef cgimage = CGBitmapContextCreateImage(context);
	
	UIImage *image = [UIImage imageWithCGImage:cgimage scale:scale orientation:orientation];
	
	CGColorSpaceRelease(colorSpace);
	CGContextRelease(context);
	CGImageRelease(cgimage);
	
	return image;
}

@end
