//
//  MatchingGame.m
//  CardGame
//
//  Created by Eduardo Cobuci on 6/20/14.
//  Copyright (c) 2014 Eduardo Cobuci. All rights reserved.
//

#import "MatchingGame.h"
#import "Deck.h"
#import "PlayingDeck.h"

@interface MatchingGame()

@property (nonatomic, strong) NSMutableArray *cards;
@property (nonatomic, readwrite) NSInteger score;

@end

@implementation MatchingGame

- (instancetype)initWithCardsCount:(NSUInteger)count {
    self = [self init];
    if (self) {
        self.cards = [[NSMutableArray alloc] initWithCapacity:count];
        PlayingDeck *deck = [[PlayingDeck alloc] init];
        for (int i = 0; i < count; i++) {
            Card *card = [deck drawRandomCard];
            if (card) {
                [self.cards addObject:card];
            }
        }
        self.score = 0;
    }
    return self;
}

static const int MATCHING_BONUS = 4;
static const int FLIPING_PENALTY = 1;
static const int WRONG_MATCH_PENALTY = 2;

- (void)chooseCard:(NSUInteger)index {
    Card *card = self.cards[index];
    
    if (card.isChosen) {
        card.chosen = NO;
    }
    else {
        card.chosen = YES;
        for (Card *otherCard in self.cards) {
            if (card != otherCard && otherCard.isChosen && !otherCard.isMatched) {
                int matchPoints = [card match:@[otherCard]];
                if (matchPoints) {
                    self.score += matchPoints * MATCHING_BONUS;
                    card.matched = YES;
                    otherCard.matched = YES;
                    card.chosen = NO;
                }
                else {
                    self.score -= WRONG_MATCH_PENALTY;
                }
                
                otherCard.chosen = NO;
                break;
            }
        }
        self.score -= FLIPING_PENALTY;
    }
}
- (Card *)cardAtIndex:(NSUInteger)index{
    return self.cards[index];
}
@end
