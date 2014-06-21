//
//  ViewController.m
//  LifeCounter
//
//  Created by Eduardo Cobuci on 6/21/14.
//  Copyright (c) 2014 Eduardo Cobuci. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic) NSInteger playerOneLife;
@property (nonatomic) NSInteger playerTwoLife;
@property (weak, nonatomic) IBOutlet UILabel *playerOneLifeLabel;
@property (weak, nonatomic) IBOutlet UILabel *playerTwoLifeLabel;
@end

@implementation ViewController
- (IBAction)playerOneLifeUp
{
    self.playerOneLife++;
    [self updateUI];
}
- (IBAction)playerOneLifeDown {
    self.playerOneLife--;
    [self updateUI];
}
- (IBAction)playerTwoLifeUp {
    self.playerTwoLife++;
    [self updateUI];

}
- (IBAction)playerTwoLifeDown {
    self.playerTwoLife--;
    [self updateUI];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.playerOneLife = 20;
    self.playerTwoLife = 20;
    
    //self.playerTwoLifeLabel.transform = CGAffineTransformMakeRotation(M_PI);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateUI
{
    self.playerOneLifeLabel.text = [NSString stringWithFormat:
                                    @"%ld", (long)self.playerOneLife];
    self.playerTwoLifeLabel.text = [NSString stringWithFormat:
                                    @"%ld", (long)self.playerTwoLife];
}

@end
