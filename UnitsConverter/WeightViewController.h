//
//  WeightViewController.h
//  UnitsConverter
//
//  Created by Alejandro Martin Flores Naranjo on 4/17/15.
//  Copyright (c) 2015 Training. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WeightViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *kilogramsTextField;
@property (weak, nonatomic) IBOutlet UITextField *poundsTextField;

- (IBAction)kilogramsConversions:(UITextField *)sender;
- (IBAction)poundsConversions:(UITextField *)sender;
- (IBAction)clearAllButton:(UIButton *)sender;

@end
