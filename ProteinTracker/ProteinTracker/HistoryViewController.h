//
//  HistoryViewController.h
//  ProteinTracker
//
//  Created by Eduardo Cobuci on 4/12/14.
//  Copyright (c) 2014 Eduardo Cobuci. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HistoryViewController : UIViewController {
    NSMutableArray *history;
}
@property (weak, nonatomic) IBOutlet UILabel *historyLabel;
-(void)setHistory:(NSMutableArray *)h;
@end
