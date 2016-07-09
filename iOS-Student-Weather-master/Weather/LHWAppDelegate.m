//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // Your code goes here
    // Don't forget to assign the window a rootViewController
    
    City *vancouver = [[City alloc] initWithName:@"Vancouver City" temperature:26 andChanceOfRain:80];
    City *beijing = [[City alloc] initWithName:@"Beijing" temperature:38 andChanceOfRain:0];
    City *chicago = [[City alloc] initWithName:@"Chicago City" temperature:17 andChanceOfRain:40];
    City *hongKong = [[City alloc] initWithName:@"Hong Kong" temperature:35 andChanceOfRain:90];
    City *miami = [[City alloc] initWithName:@"Miami" temperature:20 andChanceOfRain:60];
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    self.window.rootViewController = tabBarController;
    
    CityViewController *vancouverCityViewController = [[CityViewController alloc] initWithCity:vancouver];
//    vancouverCityViewController.view.backgroundColor = [UIColor greenColor];
    vancouverCityViewController.title = @"Vancouver";
    CityViewController *beijingCityViewController = [[CityViewController alloc] initWithCity:beijing];
//    beijingCityViewController.view.backgroundColor = [UIColor orangeColor];
    beijingCityViewController.title = @"Beijing";
    CityViewController *chicagoCityViewController = [[CityViewController alloc] initWithCity:chicago];
//    chicagoCityViewController.view.backgroundColor = [UIColor whiteColor];
    chicagoCityViewController.title = @"Chicago";
    CityViewController *hongKongCityViewController = [[CityViewController alloc] initWithCity:hongKong];
//    hongKongCityViewController.view.backgroundColor = [UIColor yellowColor];
    hongKongCityViewController.title = @"HongKong";
    CityViewController *miamiCityViewController = [[CityViewController alloc] initWithCity:miami];
//    miamiCityViewController.view.backgroundColor = [UIColor blueColor];
    miamiCityViewController.title = @"Miami";
    
    UINavigationController *vancouverNavigationController =[[UINavigationController alloc] initWithRootViewController:vancouverCityViewController];
    vancouverNavigationController.tabBarItem.image = [UIImage imageNamed:@"cloudy-night"];
    UINavigationController *beijingNavigationController = [[UINavigationController alloc] initWithRootViewController:beijingCityViewController];
    beijingNavigationController.tabBarItem.image = [UIImage imageNamed:@"cloudy-night"];
    UINavigationController *chicagoNavigationController = [[UINavigationController alloc] initWithRootViewController:chicagoCityViewController];
    chicagoNavigationController.tabBarItem.image = [UIImage imageNamed:@"cloudy-night"];
    UINavigationController *hongKongNavigationController = [[UINavigationController alloc] initWithRootViewController:hongKongCityViewController];
    hongKongNavigationController.tabBarItem.image = [UIImage imageNamed:@"cloudy-night"];
    UINavigationController *miamiNavigationController = [[UINavigationController alloc] initWithRootViewController:miamiCityViewController];
    miamiNavigationController.tabBarItem.image = [UIImage imageNamed:@"cloudy-night"];
    
    tabBarController.viewControllers = @[vancouverNavigationController, beijingNavigationController, chicagoNavigationController, hongKongNavigationController, miamiNavigationController];
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
