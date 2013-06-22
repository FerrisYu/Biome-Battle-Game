//
//  CardImg.h
//  Biome Battle
//
//  Created by Hai fu Yu on 13-6-21.
//  Copyright (c) 2013年 Hai fu Yu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface CardImg : NSManagedObject

@property (nonatomic, retain) NSData * img;
@property (nonatomic, retain) NSNumber * cardId;
@property (nonatomic, retain) NSManagedObject *card;

@end
