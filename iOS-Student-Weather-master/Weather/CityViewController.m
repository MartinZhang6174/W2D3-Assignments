//
//  CityViewController.m
//  Weather
//
//  Created by Martin Zhang on 2016-07-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"

@implementation CityViewController

- (instancetype)initWithCity:(City *)city
{
    self = [super init];
    if (self) {
        self.city = city;
    }
    return self;
}

- (void)showWeatherDetails:(UIButton *)sender
{
    CityDetailedViewController *details = [[CityDetailedViewController alloc] initWithCity:self.city];
    details.title = self.city.cityName;
    details.city = self.city;
    
    [self.navigationController pushViewController:details animated:YES];
}

- (UILabel *) settingUpLabelTexts:(NSString*)labelContent {
    UILabel * label = [[UILabel alloc]initWithFrame:CGRectZero];
    label.translatesAutoresizingMaskIntoConstraints = NO;
    label.text = labelContent;
    [label sizeToFit];
    return label;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    UILabel *cityNameLabel = [self settingUpLabelTexts: self.city.cityName];
    [self.view addSubview:cityNameLabel];

    UIButton *detailsButton = [[UIButton alloc]initWithFrame:CGRectZero];
    detailsButton.translatesAutoresizingMaskIntoConstraints = NO;
    [detailsButton setTitle:@"Details" forState:UIControlStateNormal];
    [detailsButton addTarget:self action:@selector(showWeatherDetails:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:detailsButton];
    

    NSLayoutConstraint *detailButtonXCenterConstraint = [NSLayoutConstraint constraintWithItem:detailsButton
                                                                    attribute:NSLayoutAttributeCenterX
                                                                    relatedBy:NSLayoutRelationEqual
                                                                       toItem:self.view
                                                                    attribute:NSLayoutAttributeCenterX
                                                                   multiplier:1.0
                                                                    constant:0.0];
    
    NSLayoutConstraint *detailButtonTopConstraint = [NSLayoutConstraint constraintWithItem:detailsButton
                                                                                 attribute:NSLayoutAttributeTop
                                                                                 relatedBy:NSLayoutRelationEqual
                                                                                    toItem:self.view
                                                                                 attribute:NSLayoutAttributeTop
                                                                                multiplier:1.0
                                                                                  constant:270];
    
    NSLayoutConstraint *detailButtonHeightConstraint = [NSLayoutConstraint constraintWithItem:detailsButton
                                                                                    attribute:NSLayoutAttributeHeight
                                                                                    relatedBy:NSLayoutRelationEqual
                                                                                       toItem:nil
                                                                                    attribute:NSLayoutAttributeHeight
                                                                                   multiplier:1.0
                                                                                     constant:20.0];
    
    NSLayoutConstraint *detailButtonWidth = [NSLayoutConstraint constraintWithItem:detailsButton
                                                                         attribute:NSLayoutAttributeWidth
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:nil
                                                                         attribute:NSLayoutAttributeWidth
                                                                        multiplier:1.0
                                                                          constant:87.0];

    NSLayoutConstraint *labelXCenterConstraint = [NSLayoutConstraint constraintWithItem:cityNameLabel
                                                                                       attribute:NSLayoutAttributeCenterX
                                                                                       relatedBy:NSLayoutRelationEqual
                                                                                          toItem:self.view
                                                                                       attribute:NSLayoutAttributeCenterX
                                                                                      multiplier:1.0
                                                                                        constant:0.0];

    
    NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:cityNameLabel
                                                                              attribute:NSLayoutAttributeTop
                                                                              relatedBy:NSLayoutRelationEqual
                                                                                 toItem:self.view
                                                                              attribute:NSLayoutAttributeTop
                                                                             multiplier:1.0
                                                                               constant:100.0];


    [self.view addConstraints:@[topConstraint, labelXCenterConstraint, detailButtonXCenterConstraint, detailButtonTopConstraint, detailButtonHeightConstraint,detailButtonWidth]];
    [self.view layoutIfNeeded];
    
//    [self.view addConstraints:@[vancouverTopConstraint, vancouverLabelXCenterConstraint, beijingTopConstraint, beijingLabelXCenterConstraint, chicagoTopConstraint, chicagoLabelXCenterConstraint, hongKongTopConstraint, hongKongLabelXCenterConstraint, miamiTopConstraint, miamiLabelXCenterConstraint]];
    
}



@end

