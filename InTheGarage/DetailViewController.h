//
//  ViewController.h
//  InTheGarage
//
//  Created by Caleb Hicks on 1/29/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CarController.h"

@interface DetailViewController : UIViewController

@property (nonatomic, strong) Car *car;

- (void)updateWithCar:(Car *)car;


@end

