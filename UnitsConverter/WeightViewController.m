//
//  WeightViewController.m
//  UnitsConverter
//
//  Created by Alejandro Martin Flores Naranjo on 4/17/15.
//  Copyright (c) 2015 Training. All rights reserved.
//
//  All image resources obtained from icons8.com

#import "WeightViewController.h"

@interface WeightViewController ()

    @property (weak, nonatomic) IBOutlet UITextField *kilogramsTextField;
    @property (weak, nonatomic) IBOutlet UITextField *poundsTextField;

@end

@implementation WeightViewController

#pragma mark - UIViewController Lifecycle Methods
- (void)viewDidLoad {
    [super viewDidLoad];
    _kilogramsTextField.placeholder = @"1.0 kg";
    _poundsTextField.placeholder = @"2.21 lbs";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Weight Conversion Methods
- (IBAction)kilogramsConversions:(UITextField *)sender {
    double kg = [_kilogramsTextField.text doubleValue];
    double kilogramsToPounds = kg / 0.453;
    
    _poundsTextField.text = [NSString stringWithFormat:@"%.2f lbs", kilogramsToPounds];
}

- (IBAction)poundsConversions:(UITextField *)sender {
    double lbs = [_poundsTextField.text doubleValue];
    double poundsToKilograms = lbs * 0.453;
    
    _kilogramsTextField.text = [NSString stringWithFormat:@"%.2f kg", poundsToKilograms];
}

- (IBAction)clearAllButton:(UIButton *)sender {
    _kilogramsTextField.text = nil;
    _poundsTextField.text = nil;
}

#pragma mark - Touch Methods
//When the user taps anywhere in a blank space in the view, the keyboard is hidden
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

#pragma mark - Navigation
/*// In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
