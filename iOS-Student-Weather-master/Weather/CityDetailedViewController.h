//
//  CityDetailedViewController.h
//  Weather
//
//  Created by Martin Zhang on 2016-07-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"

@interface CityDetailedViewController : UIViewController

@property (nonatomic) City *city;

- (instancetype)initWithCity:(City *)city;

@end
