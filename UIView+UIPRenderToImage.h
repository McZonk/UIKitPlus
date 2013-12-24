//
//  UIView+UIPRenderToImage.h
//  TRAUMA
//
//  Created by Maximilian Christ on 20.02.12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (UIPRenderToImage)

- (UIImage*)renderToImage;
- (UIImage*)renderToImageWithSize:(CGSize)size;

@end
