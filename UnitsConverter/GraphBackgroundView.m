//
//  GraphBackgroundView.m
//  UnitsConverter
//
//  Created by Alejandro Martin Flores Naranjo on 4/23/15.
//  Copyright (c) 2015 Training. All rights reserved.
//

#import "GraphBackgroundView.h"
#import <QuartzCore/QuartzCore.h>

@implementation GraphBackgroundView

- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    //Round the corners of the clearAllButton
    _clearAllButton.layer.cornerRadius = 8;
    _clearAllButton.clipsToBounds = YES;
    
}

@end
