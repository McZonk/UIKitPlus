//
//  UIImage+UIPMetadata.h
//  ImageShuttle
//
//  Created by Maximilian Christ on 21/11/13.
//  Copyright (c) 2013 Boinx Software Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (UIPMetadata)

+ (NSDictionary *)metadataFromImageData:(NSData *)data;

+ (NSMutableDictionary *)mutableMetadataFromImageData:(NSData *)data;
+ (NSMutableDictionary *)mutableMetadataFromMetaData:(NSDictionary *)metadata;

@end
