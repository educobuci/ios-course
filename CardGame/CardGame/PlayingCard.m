//
//  PlayingCard.m
//  CardGame
//
//  Created by Eduardo Cobuci on 6/20/14.
//  Copyright (c) 2014 Eduardo Cobuci. All rights reserved.
//

#import "PlayingCard.h"
#import "Card.h"

@implementation PlayingCard

- (int) match:(NSArray *)otherCards {
    int score = 0;
    if (otherCards.count == 1) {
        PlayingCard *otherCard = otherCards[0];
        if ([self.suit isEqualToString:otherCard.suit]) {
            score = 1;
        }
        else if(self.rank == otherCard.rank){
            score = 4;
        }
    }
    return score;
}
- (NSString *)contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit;

+ (NSArray *)validSuits
{
    return @[@"♥",@"♦",@"♠",@"♣"];
}

- (void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

+ (NSArray *) rankStrings {
    return @[@"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger)maxRank{
    return [[self rankStrings] count] -1;
}
@end
