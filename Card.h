//
//  Card.h
//  Biome Battle
//
//  Created by Hai fu Yu on 13-6-21.
//  Copyright (c) 2013年 Hai fu Yu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class CardImg;

@interface Card : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * latin_name;
@property (nonatomic, retain) NSString * content;
@property (nonatomic, retain) NSString * card_color;
@property (nonatomic, retain) NSString * graphic_artist;
@property (nonatomic, retain) NSString * habitat1;
@property (nonatomic, retain) NSString * habitat3;
@property (nonatomic, retain) NSString * habitat2;
@property (nonatomic, retain) NSNumber * hierarchy;
@property (nonatomic, retain) NSNumber * size;
@property (nonatomic, retain) NSString * graphicUrl;
@property (nonatomic, retain) NSString * size_image_url;
@property (nonatomic, retain) NSString * backgroundGraphicUrl;
@property (nonatomic, retain) NSString * food_hierachy_img_url;
@property (nonatomic, retain) NSData * graphicImg;
@property (nonatomic, retain) NSData * foodHieraachyImg;
@property (nonatomic, retain) NSData * sizeGraphicImg;
@property (nonatomic, retain) NSData * backgroundGraphicImg;
@property (nonatomic, retain) NSNumber * cardId;
@property (nonatomic, retain) CardImg *cardImg;

+(NSString *) getContent:(NSString *) html;
+(NSData *)getNSDataFormatImgWithUrl:(NSString *) strUrl;
-(UIImage*)getImgWittNSSdata:(NSData*)data;

@end
