//
//  Card.m
//  Biome Battle
//
//  Created by Hai fu Yu on 13-6-21.
//  Copyright (c) 2013年 Hai fu Yu. All rights reserved.
//

#import "Card.h"
#import "CardImg.h"


@implementation Card

@dynamic name;
@dynamic latin_name;
@dynamic content;
@dynamic card_color;
@dynamic graphic_artist;
@dynamic habitat1;
@dynamic habitat3;
@dynamic habitat2;
@dynamic hierarchy;
@dynamic size;
@dynamic graphicUrl;
@dynamic size_image_url;
@dynamic backgroundGraphicUrl;
@dynamic food_hierachy_img_url;
@dynamic graphicImg;
@dynamic foodHieraachyImg;
@dynamic sizeGraphicImg;
@dynamic backgroundGraphicImg;
@dynamic cardId;
@dynamic cardImg;

+(NSData *)getNSDataFormatImgWithUrl:(NSString *) strUrl
{
	NSURL * imageURL = [NSURL URLWithString:strUrl];
    NSData * imageData = [NSData dataWithContentsOfURL:imageURL];
    UIImage * image = [UIImage imageWithData:imageData];
    NSData *savedImageData = UIImageJPEGRepresentation(image,1);
    return savedImageData;
}


+(NSString *) getContent:(NSString *) html {
    
    NSScanner *theScanner;
    NSString *text = nil;
    
    theScanner = [NSScanner scannerWithString:html];
    
    while ([theScanner isAtEnd] == NO)
    {
        
        // find start of tag
        [theScanner scanUpToString:@"<" intoString:NULL] ;
        // find end of tag
        [theScanner scanUpToString:@">" intoString:&text] ;
        
        // replace the found tag with a space
        //(you can filter multi-spaces out later if you wish)
        html = [html stringByReplacingOccurrencesOfString:
                [ NSString stringWithFormat:@"%@>", text]
                                               withString:@" "];
        
    } // while //
    return html;
    
}




@end
