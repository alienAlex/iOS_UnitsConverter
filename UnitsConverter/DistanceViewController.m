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

@end

@implementation DistanceViewController
    @synthesize centimetersTextField, metersTextField, kilometersTextField, inchesTextField, feetTextField, milesTextField;

    double metersToCentimeters, metersToKilometers, metersToInches, metersToFeet, metersToMiles,
           centimetersToMeters, centimetersToKilometers, centimetersToInches, centimetersToFeet, centimetersToMiles,
           kilometersToMeters, kilometersToCentimeters, kilometersToInches, kilometersToFeet, kilometersToMiles,
           inchesToMeters, inchesToCentimeters, inchesToKilometers, inchesToFeet, inchesToMiles,
           feetToMeters, feetToCentimeters, feetToKilometers, feetToInches, feetToMiles,
           milesToMeters, milesToCentimeters, milesToKilometers, milesToInches, milesToFeet;

#pragma mark - Lifecycle Methods
- (void)viewDidLoad {
    [super viewDidLoad];
    metersTextField.placeholder = @"1 m";
    centimetersTextField.placeholder = @"100 cm";
    kilometersTextField.placeholder = @"0.001 km";
    inchesTextField.placeholder = @"39.37 in";
    feetTextField.placeholder = @"3.28 ft";
    milesTextField.placeholder = @"0.0006 mi";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Distance Conversion Methods
- (IBAction)metersConversions:(UITextField *)sender {
    [self allConversions];
    
    centimetersTextField.text = [NSString stringWithFormat:@"%.2f cm", metersToCentimeters];
    kilometersTextField.text = [NSString stringWithFormat:@"%.2f m", metersToKilometers];
    inchesTextField.text = [NSString stringWithFormat:@"%.2f in", metersToInches];
    feetTextField.text = [NSString stringWithFormat:@"%.2f ft", metersToFeet];
    milesTextField.text = [NSString stringWithFormat:@"%.2f mi", metersToMiles];
}

- (IBAction)centimetersConversions:(UITextField *)sender {
    [self allConversions];
    
    metersTextField.text = [NSString stringWithFormat:@"%.2f m", centimetersToMeters];
    kilometersTextField.text = [NSString stringWithFormat:@"%.2f km", centimetersToKilometers];
    inchesTextField.text = [NSString stringWithFormat:@"%.2f in", centimetersToInches];
    feetTextField.text = [NSString stringWithFormat:@"%.2f ft", centimetersToFeet];
    milesTextField.text = [NSString stringWithFormat:@"%.2f mi", centimetersToMiles];
}

- (IBAction)kilometersConversions:(UITextField *)sender {
    [self allConversions];
    
    metersTextField.text = [NSString stringWithFormat:@"%.2f m", kilometersToMeters];
    centimetersTextField.text = [NSString stringWithFormat:@"%.2f cm", kilometersToCentimeters];
    inchesTextField.text = [NSString stringWithFormat:@"%.2f in", kilometersToInches];
    feetTextField.text = [NSString stringWithFormat:@"%.2f ft", kilometersToFeet];
    milesTextField.text = [NSString stringWithFormat:@"%.2f mi", kilometersToMiles];
}

- (IBAction)inchesConversions:(UITextField *)sender {
    
    
    metersTextField.text = [NSString stringWithFormat:@"%.2f m", inchesToMeters];
    centimetersTextField.text = [NSString stringWithFormat:@"%.2f cm", inchesToCentimeters];
    kilometersTextField.text = [NSString stringWithFormat:@"%.2f km", inchesToKilometers];
    feetTextField.text = [NSString stringWithFormat:@"%.2f ft", inchesToFeet];
    milesTextField.text = [NSString stringWithFormat:@"%.2f mi", inchesToMiles];
}

- (IBAction)feetConversions:(UITextField *)sender {
    [self allConversions];
    
    metersTextField.text = [NSString stringWithFormat:@"%.2f m", feetToMeters];
    centimetersTextField.text = [NSString stringWithFormat:@"%.2f cm", feetToCentimeters];
    kilometersTextField.text = [NSString stringWithFormat:@"%.2f km", feetToKilometers];
    inchesTextField.text = [NSString stringWithFormat:@"%.2f in", feetToInches];
    milesTextField.text = [NSString stringWithFormat:@"%.2f mi", feetToMiles];
}

- (IBAction)milesConversions:(UITextField *)sender {
    [self allConversions];
    
    metersTextField.text = [NSString stringWithFormat:@"%.2f m", milesToMeters];
    centimetersTextField.text = [NSString stringWithFormat:@"%.2f cm", milesToCentimeters];
    kilometersTextField.text = [NSString stringWithFormat:@"%.2f km", milesToKilometers];
    inchesTextField.text = [NSString stringWithFormat:@"%.2f in", milesToInches];
    feetTextField.text = [NSString stringWithFormat:@"%.2f ft", milesToFeet];
}

-(void)allConversions {
    double m = [metersTextField.text doubleValue];
    metersToCentimeters = m * 100;
    metersToKilometers = m / 1000;
    metersToInches = m / 0.0254;
    metersToFeet = m / 0.3048;
    metersToMiles = m / 1609.344;
    double cm = [centimetersTextField.text doubleValue];
    centimetersToMeters = cm / 100;
    centimetersToKilometers = cm / 100000;
    centimetersToInches = cm / 2.54;
    centimetersToFeet = cm / 30.48;
    centimetersToMiles = cm / 160934.4;
    double km = [kilometersTextField.text doubleValue];
    kilometersToMeters = km * 1000;
    kilometersToCentimeters = km * 100000;
    kilometersToInches = km / 0.0000254;
    kilometersToFeet = km / 0.0003048;
    kilometersToMiles = km / 1.609344;
    double in = [inchesTextField.text doubleValue];
    inchesToMeters = in * 0.0254;
    inchesToCentimeters = in * 2.54;
    inchesToKilometers = in * 0.0000254;
    inchesToFeet = in / 12;
    inchesToMiles = in / 63360;
    double ft = [feetTextField.text doubleValue];
    feetToMeters = ft * 0.3048;
    feetToCentimeters = ft * 30.48;
    feetToKilometers = ft * 0.0003048;
    feetToInches = ft * 12;
    feetToMiles = ft / 5280;
    double mi = [milesTextField.text doubleValue];
    milesToMeters = mi * 1609.344;
    milesToCentimeters = mi * 160934.4;
    milesToKilometers = mi * 1.609344;
    milesToInches = mi * 63360;
    milesToFeet = mi * 5280;
}

- (IBAction)clearAllButton:(UIButton *)sender {
    metersTextField.text = nil;
    centimetersTextField.text = nil;
    kilometersTextField.text = nil;
    inchesTextField.text = nil;
    feetTextField.text = nil;
    milesTextField.text = nil;
}

#pragma mark - Navigation
// In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
     // Get the new view controller using [segue destinationViewController].
     // Pass the selected object to the new view controller.
     
 }

@end
