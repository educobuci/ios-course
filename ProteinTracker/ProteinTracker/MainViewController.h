//
//  ViewController.h
//  ProteinTracker
//
//  Created by Eduardo Cobuci on 4/12/14.
//  Copyright (c) 2014 Eduardo Cobuci. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HistoryViewController.h"

@interface MainViewController : UIViewController {
    int total;
    NSMutableArray *amountHistory;
}
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UILabel *goalLabel;
@property (weak, nonatomic) IBOutlet UITextField *amountField;
- (IBAction)addClicked:(id)sender;
- (IBAction)unwindToMain:(UIStoryboardSegue *)segue;
- (void)goalChanged:(NSNotification *)notification;
@end
