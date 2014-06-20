//
//  ViewController.m
//  CardGame
//
//  Created by Eduardo Cobuci on 6/19/14.
//  Copyright (c) 2014 Eduardo Cobuci. All rights reserved.
//

#import "ViewController.h"
#import "MatchingGame.h"

@interface ViewController ()
@property (strong, nonatomic) MatchingGame *game;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@end

@implementation ViewController

- (MatchingGame *)game {
    if (!_game) {
        _game = [[MatchingGame alloc] initWithCardsCount:[self.cardButtons count]];
    }
    return _game;
}

- (IBAction)touchCard:(UIButton *)sender {
    NSUInteger index = [[self cardButtons] indexOfObject:sender];
    [self.game chooseCard:index];
    [self updateUI];
}

- (void) updateUI {
    for (UIButton *button in self.cardButtons) {
        NSUInteger index = [[self cardButtons] indexOfObject:button];
        Card *card = [self.game cardAtIndex:index];
        
        NSString *title = @"";
        UIImage *image = [UIImage imageNamed:@"magic"];
        
        if (card.isChosen || card.isMatched) {
            title = card.contents;
            image = nil;
        }
        
        if (card.isMatched) {
            button.enabled = NO;
        }
        
        [button setTitle:title forState:UIControlStateNormal];
        [button setImage:image forState:UIControlStateNormal];
    }
    [self.scoreLabel setText:[NSString stringWithFormat:@"Score: %d", self.game.score]];
}

@end
