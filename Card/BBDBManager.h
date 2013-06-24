/*
 BBManager.h
 GROUP 13 Biome Battle team
 
 Revision History
 1.0 Creatation by Hai Fu Yu
 
 Discovered Bugs
 1. database create every time the program runs
        Solution: created coreDataHasEntriesForEntityName to varify if database exist already.
 
 
*/


#import <Foundation/Foundation.h>
#import "Card.h"
#import "CardImg.h"
#import "BBAppDelegate.h"

@interface BBDBManager : NSObject
{

}

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

+(CardImg *)GetRecordById:(int) idNum ;
+ (BOOL)coreDataHasEntriesForEntityName:(NSString *)entityName;





@end
