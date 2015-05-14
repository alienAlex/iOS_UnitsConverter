//
//  WeightViewController.m
//  UnitsConverter
//
//  Created by Alejandro Flores on 4/17/15.
//  Copyright (c) 2015 Training. All rights reserved.
//
//  All image resources obtained from icons8.com

#import "WeightViewController.h"

@interface WeightViewController ()
    @property (weak, nonatomic) IBOutlet UITextField *kilogramsTextField;
    @property (weak, nonatomic) IBOutlet UITextField *poundsTextField;

    - (IBAction)kilogramsConversions:(UITextField *)sender;
    - (IBAction)poundsConversions:(UITextField *)sender;
    - (IBAction)clearAllButton:(UIButton *)sender;
@end

@implementation WeightViewController
    double kilogramsToPounds, poundsToKilograms;

#pragma mark - UIViewController Lifecycle Methods
- (void)viewDidLoad {
    [super viewDidLoad];
    self.kilogramsTextField.placeholder = @"1.0 kg";
    self.poundsTextField.placeholder = @"2.21 lbs";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Weight Conversion Methods
- (IBAction)kilogramsConversions:(UITextField *)sender {
    [self allConversions];
    
    self.poundsTextField.text = [NSString stringWithFormat:@"%.2f lbs", kilogramsToPounds];
}

- (IBAction)poundsConversions:(UITextField *)sender {
    [self allConversions];
    
    self.kilogramsTextField.text = [NSString stringWithFormat:@"%.2f kg", poundsToKilograms];
}

-(void)allConversions {
    double kg = [self.kilogramsTextField.text doubleValue];
    kilogramsToPounds = kg / 0.453;
    
    double lbs = [self.poundsTextField.text doubleValue];
    poundsToKilograms = lbs * 0.453;
}

- (IBAction)clearAllButton:(UIButton *)sender {
    self.kilogramsTextField.text = nil;
    self.poundsTextField.text = nil;
}

#pragma mark - Navigation
// In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
     // Get the new view controller using [segue destinationViewController].
     // Pass the selected object to the new view controller.
     
 }

@end
