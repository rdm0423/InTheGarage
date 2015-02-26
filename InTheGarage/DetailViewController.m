//
//  ViewController.m
//  InTheGarage
//
//  Created by Caleb Hicks on 1/29/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *makeField;
@property (weak, nonatomic) IBOutlet UITextField *modelField;
@property (weak, nonatomic) IBOutlet UITextField *yearField;


@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self updateWithCar:[[CarController sharedInstance].cars firstObject]];
}

- (IBAction)saveButton:(id)sender {
    
    if (self.car) {
        self.car.make = self.makeField.text;
        self.car.model = self.modelField.text;
        self.car.year = self.yearField.text;
        [[CarController sharedInstance] save];
    } else {
        self.car = [[CarController sharedInstance] createCarWithMake:self.makeField.text model:self.modelField.text year:self.yearField.text];
    }
}

- (void)updateWithCar:(Car *)car {
    
    self.car = car;
    self.makeField.text = car.make;
    self.modelField.text = car.model;
    self.yearField.text = car.year;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
