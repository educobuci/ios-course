//
//  ViewController.m
//  ProteinTracker
//
//  Created by Eduardo Cobuci on 4/12/14.
//  Copyright (c) 2014 Eduardo Cobuci. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

-(id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        amountHistory = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    NSInteger goal = [[NSUserDefaults standardUserDefaults] integerForKey:@"goal"];
    self.goalLabel.text = [NSString stringWithFormat:@"%d", goal];
    
    NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
    [center addObserver:self selector:@selector(goalChanged:) name:NSUserDefaultsDidChangeNotification object:nil];
}

- (void)goalChanged:(NSNotification *)notification {
    NSUserDefaults *defaults = (NSUserDefaults *)[notification object];
    
    NSInteger goal = [defaults integerForKey:@"goal"];
    self.goalLabel.text = [NSString stringWithFormat:@"%d", goal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addClicked:(id)sender {
    total += self.amountField.text.intValue;
    self.totalLabel.text = [NSString stringWithFormat:@"%d", total];
    [amountHistory addObject:[NSNumber numberWithInt:self.amountField.text.intValue]];
    
    self.amountField.text = @"";
    
    if (total >= self.goalLabel.text.intValue) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Success!" message:@"You reached your goal!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        
        [alert show];
    }
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:TRUE];
}

- (IBAction)unwindToMain:(UIStoryboardSegue *)segue {
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showHistory" ]) {
        HistoryViewController *controller = (HistoryViewController *)segue.destinationViewController;
        [controller setHistory:amountHistory];
    }
}
@end
