//
//  GameController.h
//  Mafia
//
//  Created by Martin Zhang on 2016-07-06.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"

@interface GameController : UIViewController

@property BOOL isPlayersTurn;
@property BOOL isComputersTurn;

- (void) miniGame;

@end
