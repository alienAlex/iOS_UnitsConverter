//
//  DistanceViewController.m
//  UnitsConverter
//
//  Created by Alejandro Martin Flores Naranjo on 4/17/15.
//  Copyright (c) 2015 Training. All rights reserved.
//
//  All image resources obtained from icons8.com

#import "DistanceViewController.h"

@interface DistanceViewController ()

    @property (weak, nonatomic) IBOutlet UITextField *centimetersTextField;
    @property (weak, nonatomic) IBOutlet UITextField *metersTextField;
    @property (weak, nonatomic) IBOutlet UITextField *kilometersTextField;
    @property (weak, nonatomic) IBOutlet UITextField *inchesTextField;
    @property (weak, nonatomic) IBOutlet UITextField *feetTextField;
    @property (weak, nonatomic) IBOutlet UITextField *milesTextField;
    @property (weak, nonatomic) IBOutlet UIButton *clearAllButton;

@end

@implementation DistanceViewController

#pragma mark - Lifecycle Methods
- (void)viewDidLoad {
    [super viewDidLoad];
    _metersTextField.placeholder = @"1 m";
    _centimetersTextField.placeholder = @"100 cm";
    _kilometersTextField.placeholder = @"0.001 km";
    _inchesTextField.placeholder = @"39.37 in";
    _feetTextField.placeholder = @"3.28 ft";
    _milesTextField.placeholder = @"0.0006 mi";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Distance Conversion Methods
- (IBAction)metersConversions:(UITextField *)sender {
    double m = [_metersTextField.text doubleValue];
    double metersToCentimeters = m * 100;
    double metersToKilometers = m / 1000;
    double metersToInches = m / 0.0254;
    double metersToFeet = m / 0.3048;
    double metersToMiles = m / 1609.344;
    
    _centimetersTextField.text = [NSString stringWithFormat:@"%.2f cm", metersToCentimeters];
    _kilometersTextField.text = [NSString stringWithFormat:@"%.2f m", metersToKilometers];
    _inchesTextField.text = [NSString stringWithFormat:@"%.2f in", metersToInches];
    _feetTextField.text = [NSString stringWithFormat:@"%.2f ft", metersToFeet];
    _milesTextField.text = [NSString stringWithFormat:@"%.2f mi", metersToMiles];
}

- (IBAction)centimetersConversions:(UITextField *)sender {
    double cm = [_centimetersTextField.text doubleValue];
    double centimetersToMeters = cm / 100;
    double centimetersToKilometers = cm / 100000;
    double centimetersToInches = cm / 2.54;
    double centimetersToFeet = cm / 30.48;
    double centimetersToMiles = cm / 160934.4;
    
    _metersTextField.text = [NSString stringWithFormat:@"%.2f m", centimetersToMeters];
    _kilometersTextField.text = [NSString stringWithFormat:@"%.2f km", centimetersToKilometers];
    _inchesTextField.text = [NSString stringWithFormat:@"%.2f in", centimetersToInches];
    _feetTextField.text = [NSString stringWithFormat:@"%.2f ft", centimetersToFeet];
    _milesTextField.text = [NSString stringWithFormat:@"%.2f mi", centimetersToMiles];
}

- (IBAction)kilometersConversions:(UITextField *)sender {
    double km = [_kilometersTextField.text doubleValue];
    double kilometersToMeters = km * 1000;
    double kilometersToCentimeters = km * 100000;
    double kilometersToInches = km / 0.0000254;
    double kilometersToFeet = km / 0.0003048;
    double kilometersToMiles = km / 1.609344;
    
    _metersTextField.text = [NSString stringWithFormat:@"%.2f m", kilometersToMeters];
    _centimetersTextField.text = [NSString stringWithFormat:@"%.2f cm", kilometersToCentimeters];
    _inchesTextField.text = [NSString stringWithFormat:@"%.2f in", kilometersToInches];
    _feetTextField.text = [NSString stringWithFormat:@"%.2f ft", kilometersToFeet];
    _milesTextField.text = [NSString stringWithFormat:@"%.2f mi", kilometersToMiles];
}

- (IBAction)inchesConversions:(UITextField *)sender {
    double in = [_inchesTextField.text doubleValue];
    double inchesToMeters = in * 0.0254;
    double inchesToCentimeters = in * 2.54;
    double inchesToKilometers = in * 0.0000254;
    double inchesToFeet = in / 12;
    double inchesToMiles = in / 63360;
    
    _metersTextField.text = [NSString stringWithFormat:@"%.2f m", inchesToMeters];
    _centimetersTextField.text = [NSString stringWithFormat:@"%.2f cm", inchesToCentimeters];
    _kilometersTextField.text = [NSString stringWithFormat:@"%.2f km", inchesToKilometers];
    _feetTextField.text = [NSString stringWithFormat:@"%.2f ft", inchesToFeet];
    _milesTextField.text = [NSString stringWithFormat:@"%.2f mi", inchesToMiles];
}

- (IBAction)feetConversions:(UITextField *)sender {
    double ft = [_feetTextField.text doubleValue];
    double feetToMeters = ft * 0.3048;
    double feetToCentimeters = ft * 30.48;
    double feetToKilometers = ft * 0.0003048;
    double feetToInches = ft * 12;
    double feetToMiles = ft / 5280;
    
    _metersTextField.text = [NSString stringWithFormat:@"%.2f m", feetToMeters];
    _centimetersTextField.text = [NSString stringWithFormat:@"%.2f cm", feetToCentimeters];
    _kilometersTextField.text = [NSString stringWithFormat:@"%.2f km", feetToKilometers];
    _inchesTextField.text = [NSString stringWithFormat:@"%.2f in", feetToInches];
    _milesTextField.text = [NSString stringWithFormat:@"%.2f mi", feetToMiles];
}

- (IBAction)milesConversions:(UITextField *)sender {
    double mi = [_milesTextField.text doubleValue];
    double milesToMeters = mi * 1609.344;
    double milesToCentimeters = mi * 160934.4;
    double milesToKilometers = mi * 1.609344;
    double milesToInches = mi * 63360;
    double milesToFeet = mi * 5280;
    
    _metersTextField.text = [NSString stringWithFormat:@"%.2f m", milesToMeters];
    _centimetersTextField.text = [NSString stringWithFormat:@"%.2f cm", milesToCentimeters];
    _kilometersTextField.text = [NSString stringWithFormat:@"%.2f km", milesToKilometers];
    _inchesTextField.text = [NSString stringWithFormat:@"%.2f in", milesToInches];
    _feetTextField.text = [NSString stringWithFormat:@"%.2f ft", milesToFeet];
}

- (IBAction)clearAllButton:(UIButton *)sender {
    _metersTextField.text = nil;
    _centimetersTextField.text = nil;
    _kilometersTextField.text = nil;
    _inchesTextField.text = nil;
    _feetTextField.text = nil;
    _milesTextField.text = nil;
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
