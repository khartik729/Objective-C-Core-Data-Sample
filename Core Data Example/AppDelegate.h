//
//  AppDelegate.h
//  Core Data Example
//
//  Created by Khartik on 11/23/20.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

@property(readonly, strong)NSManagedObjectContext * manageobjectcontext;

@property(readonly, strong, nonatomic)NSManagedObjectModel *managedobjectmodel;

@property(readonly, strong, nonatomic)NSPersistentStoreCoordinator * persistentstorecontainer;



- (void)saveContext;
-(NSURL *)applicationdocumentdirectory;

@end

