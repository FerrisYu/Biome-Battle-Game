/*
 BBAppDelegate.h
 GROUP 13 Biome Battle team
 
 Revision History
 1.0 Creatation
 1.1 Add create function
 
 Discovered Bugs

 
 */



#import <UIKit/UIKit.h>

@interface BBAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
