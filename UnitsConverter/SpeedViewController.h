//
//  SpeedViewController.h
//  UnitsConverter
//
//  Created by Alex on 4/29/15.
//  Copyright (c) 2015 Training. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SpeedViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *kphTextField;
@property (weak, nonatomic) IBOutlet UITextField *mphTextField;
@property (weak, nonatomic) IBOutlet UITextField *knotsTextField;

-(IBAction)kphConversions:(id)sender;
-(IBAction)mphConversions:(id)sender;
-(IBAction)knotsConversions:(id)sender;
- (IBAction)clearButton:(UIButton *)sender;
@end
