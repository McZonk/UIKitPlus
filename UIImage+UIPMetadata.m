//
//  UIImage+UIPMetadata.m
//
//  Created by Maximilian Christ on 21/11/13.
//  Copyright (c) 2013 Boinx Software Ltd. All rights reserved.
//

#import "UIImage+UIPMetadata.h"

#import <ImageIO/ImageIO.h>


@implementation UIImage (UIPMetadata)

+ (NSDictionary *)metadataFromImageData:(NSData *)data
{
	if(data == nil)
	{
		return nil;
	}
	
	NSDictionary *metadata = nil;
	
	CGImageSourceRef source = CGImageSourceCreateWithData((__bridge CFDataRef)data, nil);
	
	if(source != nil)
	{
		metadata = CFBridgingRelease(CGImageSourceCopyPropertiesAtIndex(source, 0, nil));
	
		CFRelease(source);
	}

	return metadata;
}

+ (NSMutableDictionary *)mutableMetadataFromImageData:(NSData *)data
{
	NSDictionary *metadata = [self metadataFromImageData:data];
	if(metadata == nil)
	{
		return nil;
	}
	
	return [self mutableMetadataFromMetaData:metadata];
}

+ (NSMutableDictionary *)mutableMetadataFromMetaData:(NSDictionary *)metadata
{
	NSMutableDictionary *mutableMetadata = [[NSMutableDictionary alloc] initWithCapacity:metadata.count];
	
	for(NSDictionary *propertyName in metadata)
	{
		NSDictionary *properties = metadata[propertyName];
		if([properties isKindOfClass:NSDictionary.class])
		{
			NSMutableDictionary *mutableProperties = [[NSMutableDictionary alloc] initWithDictionary:properties];
			mutableMetadata[propertyName] = mutableProperties;
		}
		else
		{
			mutableMetadata[propertyName] = properties;
		}
	}
	
	return mutableMetadata;
}

@end
