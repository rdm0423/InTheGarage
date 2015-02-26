//
//  CoreDataHelper.h
//  InTheGarage
//
//  Created by Caleb Hicks on 2/26/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
@import CoreData;

@interface CoreDataHelper : NSObject

@property (strong, nonatomic, readonly) NSManagedObjectContext *managedObjectContext;

+ (CoreDataHelper *)sharedInstance;

- (void)save;

@end
