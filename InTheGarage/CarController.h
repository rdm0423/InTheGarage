//
//  CarController.h
//  InTheGarage
//
//  Created by Ross McIlwaine on 2/26/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CoreDataHelper.h"
#import "Car.h"

@interface CarController : NSObject

@property (nonatomic, strong, readonly) NSArray *cars;

+ (CarController *)sharedInstance;

- (Car *)createCarWithMake:(NSString *)make model:(NSString *)model year:(NSString *)year;

- (void)removeCar:(Car *)car;

- (void)save;

@end
