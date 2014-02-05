#import "UIImageView+UIPImageFrame.h"

@implementation UIImageView (UIPImageFrame)

- (CGRect)imageFrame
{
	UIViewContentMode contentMode = self.contentMode;
	
	UIImage *image = self.image;
	if(image == nil)
	{
		return CGRectZero;
	}
	
	CGSize imageSize = image.size;
	CGSize viewSize = self.bounds.size;
	
	switch(contentMode)
	{
		case UIViewContentModeScaleToFill:
			return CGRectMake(0.0, 0.0, viewSize.width, viewSize.height);
			
		case UIViewContentModeScaleAspectFill:
		{
			CGFloat ratioWidth = viewSize.width / imageSize.width;
			CGFloat ratioHeight = viewSize.height / imageSize.height;
			
			CGFloat ratio = ratioWidth > ratioHeight ? ratioWidth : ratioHeight;
			
			imageSize.width *= ratio;
			imageSize.height *= ratio;
			
			return CGRectMake((viewSize.width - imageSize.width) * 0.5, (viewSize.height - imageSize.height) * 0.5, imageSize.width, imageSize.height);
		}
			
		case UIViewContentModeScaleAspectFit:
		{
			CGFloat ratioWidth = viewSize.width / imageSize.width;
			CGFloat ratioHeight = viewSize.height / imageSize.height;

			CGFloat ratio = ratioWidth < ratioHeight ? ratioWidth : ratioHeight;
			
			imageSize.width *= ratio;
			imageSize.height *= ratio;
		
			return CGRectMake((viewSize.width - imageSize.width) * 0.5, (viewSize.height - imageSize.height) * 0.5, imageSize.width, imageSize.height);
		}
			
		case UIViewContentModeRedraw:
			// this is a special case and this is the best fallback 
			return CGRectMake(0.0, 0.0, viewSize.width, viewSize.height);
			
		case UIViewContentModeCenter:
			return CGRectMake((viewSize.width - imageSize.width) * 0.5, (viewSize.height - imageSize.height) * 0.5, imageSize.width, imageSize.height);
			
		case UIViewContentModeTop:
			return CGRectMake((viewSize.width - imageSize.width) * 0.5, 0.0, imageSize.width, imageSize.height);

		case UIViewContentModeBottom:
			return CGRectMake((viewSize.width - imageSize.width) * 0.5, viewSize.height - imageSize.height, imageSize.width, imageSize.height);
		
		case UIViewContentModeLeft:
			return CGRectMake(0.0, (viewSize.height - imageSize.height) * 0.5, imageSize.width, imageSize.height);
		
		case UIViewContentModeRight:
			return CGRectMake(viewSize.width - imageSize.width, (viewSize.height - imageSize.height) * 0.5, imageSize.width, imageSize.height);
		
		case UIViewContentModeTopLeft:
			return CGRectMake(0.0, 0.0, imageSize.width, imageSize.height);
		
		case UIViewContentModeTopRight:
			return CGRectMake(viewSize.width - imageSize.width, 0.0, imageSize.width, imageSize.height);
		
		case UIViewContentModeBottomLeft:
			return CGRectMake(0.0, viewSize.height - imageSize.height, imageSize.width, imageSize.height);

		case UIViewContentModeBottomRight:
			return CGRectMake(viewSize.width - imageSize.width, viewSize.height - imageSize.height, imageSize.width, imageSize.height);
	}
	
	return CGRectZero;
}

@end
