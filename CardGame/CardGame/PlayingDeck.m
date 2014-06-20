//
//  PlayingDeck.m
//  CardGame
//
//  Created by Eduardo Cobuci on 6/20/14.
//  Copyright (c) 2014 Eduardo Cobuci. All rights reserved.
//

#import "PlayingDeck.h"
#import "PlayingCard.h"
@implementation PlayingDeck

- (instancetype)init {
    self = [super init];
    for (NSString *suit in [PlayingCard validSuits]) {
        for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++) {
            PlayingCard *card = [[PlayingCard alloc]init];
            card.suit = suit;
            card.rank = rank;
            [self addCard:card];
        }
    }
    return self;
}

@end
