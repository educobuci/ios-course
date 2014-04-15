//
//  ViewController.h
//  HelloiOS
//
//  Created by Eduardo Cobuci on 4/11/14.
//  Copyright (c) 2014 Eduardo Cobuci. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
- (IBAction)buttonClicked:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end
