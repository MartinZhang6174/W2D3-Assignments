//
//  GameController.m
//  Mafia
//
//  Created by Martin Zhang on 2016-07-06.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (void) miniGame {
    int r = arc4random();
    if (r%2 != 0) {
        self.isPlayersTurn = true;
    } else {
        self.isComputersTurn = true;
    }
} 

@end

