//
//  GVViewController.m
//  Lab02-Team99
//
//  Created by X Code User on 7/15/14.
//  Copyright (c) 2014 Joshua Spicer, Fabio Germann. All rights reserved.
//

#import "GVViewController.h"

@interface GVViewController ()

@end

@implementation GVViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)clearConversion:(id)sender {
    // clear
    [self.mileInputField resignFirstResponder];
    [self.kilometerOutputField setText:@" "];
    [self.mileInputField setText:@""];
    
}
- (IBAction)convertToKilometers:(id)sender {
    // convert
    [self.mileInputField resignFirstResponder];
    NSLog(@"%@",self.mileInputField.text);
    float miles = (float) [self.mileInputField.text floatValue];
    float kilometers = miles*1.60934;
    NSString* output = [NSString stringWithFormat:@"Distance in kilometers is: %f", kilometers];
    [self.kilometerOutputField setText:output];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
