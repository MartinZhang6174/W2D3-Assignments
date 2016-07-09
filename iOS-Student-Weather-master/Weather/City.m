//
//  City.m
//  Weather
//
//  Created by Martin Zhang on 2016-07-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "City.h"

@implementation City

- (instancetype)initWithName:(NSString*)cityName temperature:(int)temp andChanceOfRain:(int)probRain {
    self.cityName = cityName;
    self.currentTemperature = temp;
    self.currentTemperature = probRain;
    return self;
}

@end
