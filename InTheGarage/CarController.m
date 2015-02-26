//
//  CarController.m
//  InTheGarage
//
//  Created by Ross McIlwaine on 2/26/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "CarController.h"

@implementation CarController

+ (CarController *)sharedInstance {
    static CarController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [CarController new];
    });
    return sharedInstance;
    
}

- (NSArray *)cars {
    
    NSFetchRequest *fetchRequest = [NSFetchRequest fetchRequestWithEntityName:@"Car"];
    NSArray *cars = [[CoreDataHelper sharedInstance].managedObjectContext executeFetchRequest:fetchRequest error:NULL];
    
    return cars;
}

- (Car *)createCarWithMake:(NSString *)make model:(NSString *)model year:(NSString *)year {
    
    Car *car = [NSEntityDescription insertNewObjectForEntityForName:@"Car" inManagedObjectContext:[CoreDataHelper sharedInstance].managedObjectContext];
    
    car.make = make;
    car.model = model;
    car.year = year;
    
    [self save];
    
    return car;
}

- (void)removeCar:(Car *)car {
    
    if  (!car) {
        return;
    }
    
    [car.managedObjectContext deleteObject:car];
    [self save];
}

- (void)save {
    
    [[CoreDataHelper sharedInstance] save];
}

@end
