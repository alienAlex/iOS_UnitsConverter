//
//  SpeedViewController.m
//  UnitsConverter
//
//  Created by Alex on 4/29/15.
//  Copyright (c) 2015 Training. All rights reserved.
//

#import "SpeedViewController.h"

@interface SpeedViewController ()

@end

@implementation SpeedViewController
    @synthesize kphTextField, mphTextField, knotsTextField;
    double kph, kphToMph, kphToKts, mph, mphToKph, mphToKts, kts, ktsToKph, ktsToMph;

#pragma mark - Life cycle methods
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    kphTextField.placeholder = @"1.0 kph";
    mphTextField.placeholder = @"0.62 mph";
    knotsTextField.placeholder = @"0.54 kts";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Speed Conversion Methods
-(IBAction)kphConversions:(id)sender {
    [self allConversions];
    
    mphTextField.text = [NSString stringWithFormat:@"%.2f + mph", kphToMph];
    knotsTextField.text = [NSString stringWithFormat:@"%.2f + kts", kphToKts];
}

-(IBAction)mphConversions:(id)sender {
    [self allConversions];
    
    kphTextField.text = [NSString stringWithFormat:@"%.2f + kph", mphToKph];
    knotsTextField.text = [NSString stringWithFormat:@"%.2f + kts", mphToKts];
}

-(IBAction)knotsConversions:(id)sender {
    [self allConversions];
    
    kphTextField.text = [NSString stringWithFormat:@"%.2f + kph", ktsToKph];
    mphTextField.text = [NSString stringWithFormat:@"%.2f + mph", ktsToMph];
}

-(void)allConversions {
    kph = [kphTextField.text doubleValue];
    kphToMph = kph / 1.609344;
    kphToKts = kph / 1.852;
    
    mph = [mphTextField.text doubleValue];
    mphToKph = mph * 1.609344;
    mphToKts = mph * 0.86898;
    
    kts = [knotsTextField.text doubleValue];
    ktsToKph = kts * 1.85200;
    ktsToMph = kts * 1.15078;
}

- (IBAction)clearButton:(UIButton *)sender {
    kphTextField.text = nil;
    mphTextField.text = nil;
    knotsTextField.text = nil;
}
#pragma mark - Navigation
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
