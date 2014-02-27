//
//  fCThirdScreenViewController.m
//  BeginnerTutorial
//
//  Created by Silvio Stappung on 27.02.14.
//  Copyright (c) 2014 freakinChuck. All rights reserved.
//

#import "fCThirdScreenViewController.h"

@interface fCThirdScreenViewController ()

@end

@implementation fCThirdScreenViewController

- (IBAction)goHome:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"Green :-)";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
