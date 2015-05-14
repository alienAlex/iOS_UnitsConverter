//
//  SpeedViewController.m
//  UnitsConverter
//
//  Created by Alejandro Flores on 4/29/15.
//  Copyright (c) 2015 Training. All rights reserved.
//

#import "SpeedViewController.h"

@interface SpeedViewController ()
    @property (weak, nonatomic) IBOutlet UITextField *kphTextField;
    @property (weak, nonatomic) IBOutlet UITextField *mphTextField;
    @property (weak, nonatomic) IBOutlet UITextField *knotsTextField;

    -(IBAction)kphConversions:(id)sender;
    -(IBAction)mphConversions:(id)sender;
    -(IBAction)knotsConversions:(id)sender;
    - (IBAction)clearButton:(UIButton *)sender;
@end

@implementation SpeedViewController
    double kph, kphToMph, kphToKts, mph, mphToKph, mphToKts, kts, ktsToKph, ktsToMph;

#pragma mark - Life cycle methods
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.kphTextField.placeholder = @"1.0 kph";
    self.mphTextField.placeholder = @"0.62 mph";
    self.knotsTextField.placeholder = @"0.54 kts";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Speed Conversion Methods
-(IBAction)kphConversions:(id)sender {
    [self allConversions];
    
    self.mphTextField.text = [NSString stringWithFormat:@"%.2f mph", kphToMph];
    self.knotsTextField.text = [NSString stringWithFormat:@"%.2f kts", kphToKts];
}

-(IBAction)mphConversions:(id)sender {
    [self allConversions];
    
    self.kphTextField.text = [NSString stringWithFormat:@"%.2f kph", mphToKph];
    self.knotsTextField.text = [NSString stringWithFormat:@"%.2f kts", mphToKts];
}

-(IBAction)knotsConversions:(id)sender {
    [self allConversions];
    
    self.kphTextField.text = [NSString stringWithFormat:@"%.2f kph", ktsToKph];
    self.mphTextField.text = [NSString stringWithFormat:@"%.2f mph", ktsToMph];
}

-(void)allConversions {
    kph = [self.kphTextField.text doubleValue];
    kphToMph = kph / 1.609344;
    kphToKts = kph / 1.852;
    
    mph = [self.mphTextField.text doubleValue];
    mphToKph = mph * 1.609344;
    mphToKts = mph * 0.86898;
    
    kts = [self.knotsTextField.text doubleValue];
    ktsToKph = kts * 1.85200;
    ktsToMph = kts * 1.15078;
}

- (IBAction)clearButton:(UIButton *)sender {
    self.kphTextField.text = nil;
    self.mphTextField.text = nil;
    self.knotsTextField.text = nil;
}
#pragma mark - Navigation
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
