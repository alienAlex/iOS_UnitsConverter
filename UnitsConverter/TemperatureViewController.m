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
    @synthesize celsiusTextField, fahrenheitTextField, kelvinTextField;
    double celsiusToFahrenheit, celsiusToKelvin, fahrenheitToCelsius, fahrenheitToKelvin, kelvinToCelsius, kelvinToFahrenheit;

#pragma mark - Lifecycle Methods
- (void)viewDidLoad {
    [super viewDidLoad];
    celsiusTextField.placeholder = @"0° Celsius";
    fahrenheitTextField.placeholder = @"32° Fahrenheit";
    kelvinTextField.placeholder = @"273° Kelvin";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Temperature Conversion Methods
- (IBAction)celsiusConversions:(UITextField *)sender {
    [self allConversions];
        
    self.fahrenheitTextField.text = [NSString stringWithFormat:@"%.2f °F", celsiusToFahrenheit];
    self.kelvinTextField.text = [NSString stringWithFormat:@"%.2f K", celsiusToKelvin];
}

- (IBAction)fahrenheitConversions:(UITextField *)sender {
    [self allConversions];
        
    self.celsiusTextField.text = [NSString stringWithFormat:@"%.2f °C", fahrenheitToCelsius];
    self.kelvinTextField.text = [NSString stringWithFormat:@"%.2f K", fahrenheitToKelvin];
}

- (IBAction)kelvinConversions:(UITextField *)sender {
    [self allConversions];
    
    self.celsiusTextField.text = [NSString stringWithFormat:@"%.2f °C", kelvinToCelsius];
    self.fahrenheitTextField.text = [NSString stringWithFormat:@"%.2f °F", kelvinToFahrenheit];
}

-(void)allConversions {
    double C = [celsiusTextField.text doubleValue];
    celsiusToFahrenheit = (C * 1.8) + 32;
    celsiusToKelvin = C + 273.15;
    
    double F = [fahrenheitTextField.text doubleValue];
    fahrenheitToCelsius = (F - 32) / 1.8;
    fahrenheitToKelvin = ((F - 32) / 1.8) + 273.15;
    
    double K = [kelvinTextField.text doubleValue];
    kelvinToCelsius = K - 273.15;
    kelvinToFahrenheit = ((K - 273.15) * 1.8) + 32;
}

- (IBAction)clearAllButton:(UIButton *)sender {
    celsiusTextField.text = nil;
    fahrenheitTextField.text = nil;
    kelvinTextField.text = nil;
}

#pragma mark - Navigation
// In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
     // Get the new view controller using [segue destinationViewController].
     // Pass the selected object to the new view controller.
 }

@end




