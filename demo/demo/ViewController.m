//
//  ViewController.m
//  demo
//
//  Created by gaurav on 23/03/17.
//  Copyright © 2017 yogesh. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIControl.h>

#pragma mark - TextField Delegates

@interface ViewController ()

@end

@implementation ViewController

@synthesize labelField;
@synthesize textField;
@synthesize buttonField;

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self.view addSubview:buttonField];
    
    [self addTextField];
    [self addLabelField];
    [self addButtonField];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)addLabelField
{
    labelField = [[UILabel alloc] initWithFrame:CGRectMake(100, 250, 200, 30)];
    [labelField setBackgroundColor:[UIColor darkGrayColor]];
    [labelField setTintColor:[UIColor whiteColor]];
    [self.view addSubview:labelField];
}
-(void)addTextField
{
    textField = [[UITextField  alloc] initWithFrame:
                              CGRectMake(100, 50, 200, 20)];
    [textField setTintColor:[UIColor redColor]];
    
    //[textField borderStyle:UITextBorderStyleLine];
    textField.borderStyle = UITextBorderStyleLine;
    [textField setFont:[UIFont systemFontOfSize:12]];
    [textField setBackgroundColor:[UIColor redColor]];
    textField.placeholder = @"Simple Text field";
    [textField setTintColor:[UIColor blueColor]];
    [self.view addSubview:textField];
}

-(void)addButtonField
{

     buttonField = [[UIButton alloc] initWithFrame:CGRectMake(100, 150, 200, 200) ];
      buttonField = [UIButton buttonWithType:UIButtonTypeRoundedRect];
   
    //[buttonField setFrame:CGRectMake(100, 150, 200, 40)];
    [buttonField setTitle:@"buttonField" forState: UIControlStateNormal];
    [buttonField setBackgroundColor:[UIColor greenColor]];
    //[buttonField setTintColor:[UIColor whiteColor]];
    [self.view addSubview:buttonField];
}

-(IBAction)action:(id)sender
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
