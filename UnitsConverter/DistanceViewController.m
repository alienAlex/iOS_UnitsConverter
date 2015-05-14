//
//  DistanceViewController.m
//  UnitsConverter
//
//  Created by Alejandro Flores on 4/17/15.
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

    - (IBAction)centimetersConversions:(UITextField *)sender;
    - (IBAction)metersConversions:(UITextField *)sender;
    - (IBAction)kilometersConversions:(UITextField *)sender;
    - (IBAction)inchesConversions:(UITextField *)sender;
    - (IBAction)feetConversions:(UITextField *)sender;
    - (IBAction)milesConversions:(UITextField *)sender;
    - (IBAction)clearAllButton:(UIButton *)sender;
@end

@implementation DistanceViewController
    double metersToCentimeters, metersToKilometers, metersToInches, metersToFeet, metersToMiles,
           centimetersToMeters, centimetersToKilometers, centimetersToInches, centimetersToFeet, centimetersToMiles,
           kilometersToMeters, kilometersToCentimeters, kilometersToInches, kilometersToFeet, kilometersToMiles,
           inchesToMeters, inchesToCentimeters, inchesToKilometers, inchesToFeet, inchesToMiles,
           feetToMeters, feetToCentimeters, feetToKilometers, feetToInches, feetToMiles,
           milesToMeters, milesToCentimeters, milesToKilometers, milesToInches, milesToFeet;

#pragma mark - Lifecycle Methods
- (void)viewDidLoad {
    [super viewDidLoad];
    self.metersTextField.placeholder = @"1 m";
    self.centimetersTextField.placeholder = @"100 cm";
    self.kilometersTextField.placeholder = @"0.001 km";
    self.inchesTextField.placeholder = @"39.37 in";
    self.feetTextField.placeholder = @"3.28 ft";
    self.milesTextField.placeholder = @"0.0006 mi";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Distance Conversion Methods
- (IBAction)metersConversions:(UITextField *)sender {
    [self allConversions];
    
    self.centimetersTextField.text = [NSString stringWithFormat:@"%.2f cm", metersToCentimeters];
    self.kilometersTextField.text = [NSString stringWithFormat:@"%.2f m", metersToKilometers];
    self.inchesTextField.text = [NSString stringWithFormat:@"%.2f in", metersToInches];
    self.feetTextField.text = [NSString stringWithFormat:@"%.2f ft", metersToFeet];
    self.milesTextField.text = [NSString stringWithFormat:@"%.2f mi", metersToMiles];
}

- (IBAction)centimetersConversions:(UITextField *)sender {
    [self allConversions];
    
    self.metersTextField.text = [NSString stringWithFormat:@"%.2f m", centimetersToMeters];
    self.kilometersTextField.text = [NSString stringWithFormat:@"%.2f km", centimetersToKilometers];
    self.inchesTextField.text = [NSString stringWithFormat:@"%.2f in", centimetersToInches];
    self.feetTextField.text = [NSString stringWithFormat:@"%.2f ft", centimetersToFeet];
    self.milesTextField.text = [NSString stringWithFormat:@"%.2f mi", centimetersToMiles];
}

- (IBAction)kilometersConversions:(UITextField *)sender {
    [self allConversions];
    
    self.metersTextField.text = [NSString stringWithFormat:@"%.2f m", kilometersToMeters];
    self.centimetersTextField.text = [NSString stringWithFormat:@"%.2f cm", kilometersToCentimeters];
    self.inchesTextField.text = [NSString stringWithFormat:@"%.2f in", kilometersToInches];
    self.feetTextField.text = [NSString stringWithFormat:@"%.2f ft", kilometersToFeet];
    self.milesTextField.text = [NSString stringWithFormat:@"%.2f mi", kilometersToMiles];
}

- (IBAction)inchesConversions:(UITextField *)sender {
    
    
    self.metersTextField.text = [NSString stringWithFormat:@"%.2f m", inchesToMeters];
    self.centimetersTextField.text = [NSString stringWithFormat:@"%.2f cm", inchesToCentimeters];
    self.kilometersTextField.text = [NSString stringWithFormat:@"%.2f km", inchesToKilometers];
    self.feetTextField.text = [NSString stringWithFormat:@"%.2f ft", inchesToFeet];
    self.milesTextField.text = [NSString stringWithFormat:@"%.2f mi", inchesToMiles];
}

- (IBAction)feetConversions:(UITextField *)sender {
    [self allConversions];
    
    self.metersTextField.text = [NSString stringWithFormat:@"%.2f m", feetToMeters];
    self.centimetersTextField.text = [NSString stringWithFormat:@"%.2f cm", feetToCentimeters];
    self.kilometersTextField.text = [NSString stringWithFormat:@"%.2f km", feetToKilometers];
    self.inchesTextField.text = [NSString stringWithFormat:@"%.2f in", feetToInches];
    self.milesTextField.text = [NSString stringWithFormat:@"%.2f mi", feetToMiles];
}

- (IBAction)milesConversions:(UITextField *)sender {
    [self allConversions];
    
    self.metersTextField.text = [NSString stringWithFormat:@"%.2f m", milesToMeters];
    self.centimetersTextField.text = [NSString stringWithFormat:@"%.2f cm", milesToCentimeters];
    self.kilometersTextField.text = [NSString stringWithFormat:@"%.2f km", milesToKilometers];
    self.inchesTextField.text = [NSString stringWithFormat:@"%.2f in", milesToInches];
    self.feetTextField.text = [NSString stringWithFormat:@"%.2f ft", milesToFeet];
}

-(void)allConversions {
    double m = [self.metersTextField.text doubleValue];
    metersToCentimeters = m * 100;
    metersToKilometers = m / 1000;
    metersToInches = m / 0.0254;
    metersToFeet = m / 0.3048;
    metersToMiles = m / 1609.344;
    double cm = [self.centimetersTextField.text doubleValue];
    centimetersToMeters = cm / 100;
    centimetersToKilometers = cm / 100000;
    centimetersToInches = cm / 2.54;
    centimetersToFeet = cm / 30.48;
    centimetersToMiles = cm / 160934.4;
    double km = [self.kilometersTextField.text doubleValue];
    kilometersToMeters = km * 1000;
    kilometersToCentimeters = km * 100000;
    kilometersToInches = km / 0.0000254;
    kilometersToFeet = km / 0.0003048;
    kilometersToMiles = km / 1.609344;
    double in = [self.inchesTextField.text doubleValue];
    inchesToMeters = in * 0.0254;
    inchesToCentimeters = in * 2.54;
    inchesToKilometers = in * 0.0000254;
    inchesToFeet = in / 12;
    inchesToMiles = in / 63360;
    double ft = [self.feetTextField.text doubleValue];
    feetToMeters = ft * 0.3048;
    feetToCentimeters = ft * 30.48;
    feetToKilometers = ft * 0.0003048;
    feetToInches = ft * 12;
    feetToMiles = ft / 5280;
    double mi = [self.milesTextField.text doubleValue];
    milesToMeters = mi * 1609.344;
    milesToCentimeters = mi * 160934.4;
    milesToKilometers = mi * 1.609344;
    milesToInches = mi * 63360;
    milesToFeet = mi * 5280;
}

- (IBAction)clearAllButton:(UIButton *)sender {
    self.metersTextField.text = nil;
    self.centimetersTextField.text = nil;
    self.kilometersTextField.text = nil;
    self.inchesTextField.text = nil;
    self.feetTextField.text = nil;
    self.milesTextField.text = nil;
}

#pragma mark - Navigation
// In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
     // Get the new view controller using [segue destinationViewController].
     // Pass the selected object to the new view controller.
     
 }

@end
