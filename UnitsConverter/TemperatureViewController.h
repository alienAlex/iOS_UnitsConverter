//
//  TemperatureViewController.h
//  UnitsConverter
//
//  Created by Alejandro Martin Flores Naranjo on 4/17/15.
//  Copyright (c) 2015 Training. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TemperatureViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *celsiusTextField;
@property (weak, nonatomic) IBOutlet UITextField *fahrenheitTextField;
@property (weak, nonatomic) IBOutlet UITextField *kelvinTextField;
@property (weak, nonatomic) IBOutlet UIButton *clearAllButton;

- (IBAction)celsiusConversions:(UITextField *)sender;
- (IBAction)fahrenheitConversions:(UITextField *)sender;
- (IBAction)kelvinConversions:(UITextField *)sender;
- (IBAction)clearAllButton:(UIButton *)sender;

@end
