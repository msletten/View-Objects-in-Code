//
//  MSViewController.m
//  View Objects in Code
//
//  Created by Mat Sletten on 5/12/14.
//  Copyright (c) 2014 Mat Sletten. All rights reserved.
//

#import "MSViewController.h"

@interface MSViewController ()

@property (strong, nonatomic) UILabel *myLabel;
@property (strong, nonatomic) UITextField *myTextField;

@end

@implementation MSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.myLabel = [[UILabel alloc] init];
    self.myLabel.frame = CGRectMake(20, 60, 280, 22);
    self.myLabel.textColor = [UIColor colorWithRed:75/255.0f green:0/255.0f blue:130/255.0f alpha:1/1.0f];
    self.myLabel.text = @"placeholder";
    [self.view addSubview:self.myLabel];
    
    self.myTextField = [[UITextField alloc] init];
    self.myTextField.frame = CGRectMake(20, 110, 280, 30);
    self.myTextField.backgroundColor = [UIColor colorWithRed:95/255.0f green:.158/255.0f blue:160/255.0f alpha:1/1.0f];
    self.myTextField.textColor = [UIColor colorWithRed:248/255.0f green:248/255.0f blue:255/255.0f alpha:1/1.0f];
    self.myTextField.placeholder = @"type text here";
    [self.view addSubview:self.myTextField];
    
    UIButton *myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    myButton.frame = CGRectMake(20, 160, 280, 30);
    [myButton setTitle:@"press me!" forState:UIControlStateNormal];
    [self.view addSubview:myButton];
    [myButton addTarget:self action:@selector(didPressButton:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)didPressButton:(UIButton *)buttonPressed
{
    self.myLabel.text = self.myTextField.text;
    [self.myTextField resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
