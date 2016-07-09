//
//  CityDetailedViewController.m
//  Weather
//
//  Created by Martin Zhang on 2016-07-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "CityDetailedViewController.h"

@implementation CityDetailedViewController

- (instancetype)initWithCity:(City *)city
{
    self = [super init];
    if (self) {
        self.city = city;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    
}

@end
