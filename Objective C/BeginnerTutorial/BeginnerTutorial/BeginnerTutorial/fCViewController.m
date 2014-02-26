//
//  fCViewController.m
//  BeginnerTutorial
//
//  Created by Silvio Stappung on 25.02.14.
//  Copyright (c) 2014 freakinChuck. All rights reserved.
//

#import "fCViewController.h"

@interface fCViewController ()

@end

@implementation fCViewController

@synthesize helloLabel;
@synthesize nameTextField;
@synthesize typeSelector;

-(IBAction) sayHello:(id)sender
{
    NSString *name = nameTextField.text;
    
    if (name.length <= 0) {
        name = @"World";
    }
    
    if (typeSelector.selectedSegmentIndex == 0) {
        helloLabel.Text = [NSString stringWithFormat: @"Hello %@ :-)", name] ;
    }
    else {
        helloLabel.Text = [NSString stringWithFormat: @"Good bye %@ :-(", name] ;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
