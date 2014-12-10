//
//  ViewController.m
//  View Objects In Code
//
//  Created by Matthew Linaberry on 12/10/14.
//  Copyright (c) 2014 Matthew Linaberry. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    Problem 1: Add a UILabel in code.
//    
//    Its\' frame should be 20, 60, 280, 22.
//    Set a default name for the label and change the label\'s color in code.
    self.aLabel = [[UILabel alloc] initWithFrame:(CGRectMake(20, 60, 280, 22))];
    self.aLabel.text = @"It'sa me!";
    self.aLabel.textColor = [UIColor blueColor];
    [self.view addSubview:self.aLabel];
//        Problem 2: Create a UITextField in code.
//        
//        Its\' frame should be 20, 110, 280, 30.
//        Setup placeholder text and change the TextField\'s background color.
    UITextField *aTextField = [[UITextField alloc] initWithFrame:(CGRectMake(20, 110, 280, 30))];
    aTextField.placeholder=@"Please type crap in me!";
    aTextField.backgroundColor=[UIColor redColor];
    [self.view addSubview:aTextField];
//        Problem 3: Create a UIButton in code using the class method buttonWithType. Choose UIButtonTypeRoundedRect as the type.
//
    UIButton *aButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//        Its\' frame should be 20, 160, 280, 30.
    aButton.frame = CGRectMake(20, 160, 280, 30);
//        Set the button\'s title to be "press me!" for UIControlStateNormal.
    [aButton setTitle:@"press me!" forState:UIControlStateNormal];
//        Setup the button\'s target action. When the user presses the button it should update the Label\'s text to be equal to the TextField\'s text.
    [aButton addTarget:self action:@selector(didPressButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:aButton];
}

- (void) didPressButton:(UIButton *) button
{
    self.aLabel.text = @"Ohh! Changed!";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
