//
//  Card.h
//  CardGame
//
//  Created by Eduardo Cobuci on 6/19/14.
//  Copyright (c) 2014 Eduardo Cobuci. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

- (int)match:(NSArray *) otherCards;

@end
