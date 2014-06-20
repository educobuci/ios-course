//
//  ViewController.m
//  CardGame
//
//  Created by Eduardo Cobuci on 6/19/14.
//  Copyright (c) 2014 Eduardo Cobuci. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (IBAction)touchCard:(UIButton *)sender {
    if ([[sender currentTitle] length]) {
        [sender setTitle:@"" forState:UIControlStateNormal];
        [sender setImage:[UIImage imageNamed:@"magic"] forState:UIControlStateNormal];
    }
    else {
        [sender setTitle:@"A♣︎" forState:UIControlStateNormal];
        [sender setImage:nil forState:UIControlStateNormal];
    }
}

@end
