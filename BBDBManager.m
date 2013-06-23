//
//  BBDBManager.m
//  Biome Battle
//
//  Created by Hai fu Yu on 13-6-21.
//  Copyright (c) 2013年 Hai fu Yu. All rights reserved.
//

#import "BBDBManager.h"
@implementation BBDBManager


//get a cardImg Record using its cardId attribute

+(CardImg *)GetRecordById:(int) idNum
{
    NSInteger tmp = idNum;
    BBAppDelegate *appDelegate = (BBAppDelegate *)[[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    
    // Construct a fetch request
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"CardImg"
                                              inManagedObjectContext:context];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"(cardId == %d)", tmp];
    [fetchRequest setPredicate:predicate];
    [fetchRequest setEntity:entity];
    
    NSError *error = nil;
    NSArray *fetchedObjects = [context executeFetchRequest:fetchRequest error:&error];
    return fetchedObjects[0];
    
}












@end
