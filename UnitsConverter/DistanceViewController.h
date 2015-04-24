//
//  DistanceViewController.h
//  UnitsConverter
//
//  Created by Alejandro Martin Flores Naranjo on 4/17/15.
//  Copyright (c) 2015 Training. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DistanceViewController : UIViewController

- (IBAction)centimetersConversions:(UITextField *)sender;
- (IBAction)metersConversions:(UITextField *)sender;
- (IBAction)kilometersConversions:(UITextField *)sender;
- (IBAction)inchesConversions:(UITextField *)sender;
- (IBAction)feetConversions:(UITextField *)sender;
- (IBAction)milesConversions:(UITextField *)sender;

- (IBAction)clearAllButton:(UIButton *)sender;

@end
