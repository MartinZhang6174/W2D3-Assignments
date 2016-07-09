//
//  CityViewController.h
//  Weather
//
//  Created by Martin Zhang on 2016-07-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"
#import "CityDetailedViewController.h"

@interface CityViewController : UIViewController

@property City *city;

- (instancetype) initWithCity:(City*)city;
- (void)showWeatherDetails:(UIButton *)sender;


@end
