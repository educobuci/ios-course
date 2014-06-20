//
//  MatchingGame.h
//  CardGame
//
//  Created by Eduardo Cobuci on 6/20/14.
//  Copyright (c) 2014 Eduardo Cobuci. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface MatchingGame : NSObject

@property (nonatomic, readonly) NSInteger score;

- (instancetype)initWithCardsCount:(NSUInteger)count;

- (void)chooseCard:(NSUInteger)card;

- (Card *)cardAtIndex:(NSUInteger)index;

@end
