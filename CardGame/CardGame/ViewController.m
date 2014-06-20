//
//  ViewController.m
//  CardGame
//
//  Created by Eduardo Cobuci on 6/19/14.
//  Copyright (c) 2014 Eduardo Cobuci. All rights reserved.
//

#import "ViewController.h"
#import "Deck.h"
#import "PlayingDeck.h"

@interface ViewController ()
@property (strong, nonatomic) Deck *deck;
@end

@implementation ViewController

- (Deck *)deck {
    if (!_deck) {
        _deck = [[PlayingDeck alloc] init];
    }
    return _deck;
}

- (IBAction)touchCard:(UIButton *)sender {
    
    if ([[sender currentTitle] length]) {
        [sender setTitle:@"" forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:@"magic"] forState:UIControlStateNormal];
    }
    else {
        Card *card = [self.deck drawRandomCard];
        if (card) {
            [sender setTitle:card.contents forState:UIControlStateNormal];
            [sender setImage:nil forState:UIControlStateNormal];
        }
    }
}

@end
