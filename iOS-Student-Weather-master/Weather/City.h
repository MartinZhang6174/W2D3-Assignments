//
//  City.h
//  Weather
//
//  Created by Martin Zhang on 2016-07-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property NSString *cityName;
@property int currentTemperature;
@property int chanceOfRain;

- (instancetype)initWithName:(NSString*)cityName temperature:(int)temp andChanceOfRain:(int)probRain;

@end
