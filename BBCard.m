//
//  BBCard.m
//  Biome Battle
//
//  Created by Hai fu Yu on 13-6-21.
//  Copyright (c) 2013年 Hai fu Yu. All rights reserved.
//

#import "BBCard.h"

@implementation BBCard



//Get image from URL
//This method is obtain from stackoverflow
//http://stackoverflow.com/questions/15314907/save-image-to-core-data
-(UIImage *)getImgViaUrl:(NSString *) strUrl
{
	NSURL * imageURL = [NSURL URLWithString:strUrl];
    NSData * imageData = [NSData dataWithContentsOfURL:imageURL];
    UIImage * image = [UIImage imageWithData:imageData];
    return image;
    
}

@end
