#import "UIView+UIPFrame.h"

@implementation UIView (UIPFrame)

- (CGPoint)frameOrigin
{
	return self.frame.origin;
}

- (void)setFrameOrigin:(CGPoint)frameOrigin
{
	CGRect frame = self.frame;
	frame.origin = frameOrigin;
	self.frame = frame;
}

- (CGSize)frameSize
{
	return self.frame.size;
}

- (void)setFrameSize:(CGSize)frameSize
{
	CGRect frame = self.frame;
	frame.size = frameSize;
	self.frame = frame;
}

- (CGFloat)frameOriginX
{
	return self.frame.origin.x;
}

- (void)setFrameOriginX:(CGFloat)frameOriginX
{
	CGRect frame = self.frame;
	frame.origin.x = frameOriginX;
	self.frame = frame;
}

- (CGFloat)frameOriginY
{
	return self.frame.origin.y;
}

- (void)setFrameOriginY:(CGFloat)frameOriginY
{
	CGRect frame = self.frame;
	frame.origin.y = frameOriginY;
	self.frame = frame;
}

- (CGFloat)frameSizeWidth
{
	return self.frame.size.width;
}

- (void)setFrameSizeWidth:(CGFloat)frameSizeWidth
{
	CGRect frame = self.frame;
	frame.size.width = frameSizeWidth;
	self.frame = frame;
}

- (CGFloat)frameSizeHeight
{
	return self.frame.size.height;
}

- (void)setFrameSizeHeight:(CGFloat)frameSizeHeight
{
	CGRect frame = self.frame;
	frame.size.height = frameSizeHeight;
	self.frame = frame;
}

@end
