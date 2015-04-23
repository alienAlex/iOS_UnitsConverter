//
//  TemperatureViewController.m
//  UnitsConverter
//
//  Created by Alejandro Martin Flores Naranjo on 4/17/15.
//  Copyright (c) 2015 Training. All rights reserved.
//
//  All image resources obtained from icons8.com

#import "TemperatureViewController.h"

@interface TemperatureViewController ()

@end

@implementation TemperatureViewController

#pragma mark - Lifecycle Methods
- (void)viewDidLoad {
    [super viewDidLoad];
    _celsiusTextField.placeholder = @"0° Celsius";
    _fahrenheitTextField.placeholder = @"32° Fahrenheit";
    _kelvinTextField.placeholder = @"273° Kelvin";
    
}

#pragma mark - Temperature Conversion Methods
- (IBAction)celsiusConversions:(UITextField *)sender {
    double C = [_celsiusTextField.text doubleValue];
    double celsiusToFahrenheit = (C * 1.8) + 32;
    double celsiusToKelvin = C + 273.15;
        
    self.fahrenheitTextField.text = [NSString stringWithFormat:@"%.2f", celsiusToFahrenheit];
    self.kelvinTextField.text = [NSString stringWithFormat:@"%.2f", celsiusToKelvin];
}

- (IBAction)fahrenheitConversions:(UITextField *)sender {
    double F = [_fahrenheitTextField.text doubleValue];
    double fahrenheitToCelsius = (F - 32) / 1.8;
    double fahrenheitToKelvin = ((F - 32) / 1.8) + 273.15;
        
    self.celsiusTextField.text = [NSString stringWithFormat:@"%.2f", fahrenheitToCelsius];
    self.kelvinTextField.text = [NSString stringWithFormat:@"%.2f", fahrenheitToKelvin];
}

- (IBAction)kelvinConversions:(UITextField *)sender {

    double K = [_kelvinTextField.text doubleValue];
    double kelvinToCelsius = K - 273.15;
    double kelvinToFahrenheit = ((K - 273.15) * 1.8) + 32;
        
    self.celsiusTextField.text = [NSString stringWithFormat:@"%.2f", kelvinToCelsius];
    self.fahrenheitTextField.text = [NSString stringWithFormat:@"%.2f", kelvinToFahrenheit];
}

- (IBAction)clearAllButton:(UIButton *)sender {
    _celsiusTextField.text = nil;
    _fahrenheitTextField.text = nil;
    _kelvinTextField.text = nil;
    
}


#pragma mark - Touch Methods
//When the user taps anywhere in a blank space in the view, the keyboard is hidden
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

#pragma mark - Navigation Methods
/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end



