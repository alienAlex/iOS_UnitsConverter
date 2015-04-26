//
//  DistanceViewController.h
//  UnitsConverter
//
//  Created by Alejandro Martin Flores Naranjo on 4/17/15.
//  Copyright (c) 2015 Training. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DistanceViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *centimetersTextField;
@property (weak, nonatomic) IBOutlet UITextField *metersTextField;
@property (weak, nonatomic) IBOutlet UITextField *kilometersTextField;
@property (weak, nonatomic) IBOutlet UITextField *inchesTextField;
@property (weak, nonatomic) IBOutlet UITextField *feetTextField;
@property (weak, nonatomic) IBOutlet UITextField *milesTextField;
@property (weak, nonatomic) IBOutlet UIButton *clearAllButton;

- (IBAction)centimetersConversions:(UITextField *)sender;
- (IBAction)metersConversions:(UITextField *)sender;
- (IBAction)kilometersConversions:(UITextField *)sender;
- (IBAction)inchesConversions:(UITextField *)sender;
- (IBAction)feetConversions:(UITextField *)sender;
- (IBAction)milesConversions:(UITextField *)sender;
- (IBAction)clearAllButton:(UIButton *)sender;

@end
