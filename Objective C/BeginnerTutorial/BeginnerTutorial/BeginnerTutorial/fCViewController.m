//
//  fCViewController.m
//  BeginnerTutorial
//
//  Created by Silvio Stappung on 25.02.14.
//  Copyright (c) 2014 freakinChuck. All rights reserved.
//

#import "fCViewController.h"
#import "fCThirdScreenViewController.h"

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

-(IBAction) alertHello:(id)sender{
    UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"MeldungTitel :-)" message:@"Is everybody having fun?? :-)" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Yes", @"No", nil ];
    
    [message show];
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    //helloLabel.text = [NSString stringWithFormat: @"%1.0", (long)clickedButtonIndex];
    switch (buttonIndex) {
        case 0:
            helloLabel.text = @"Cancel";
            break;
        case 1:
            helloLabel.text = @"Good :-)";
            break;
        case 2:
            helloLabel.text = @"Why not?";
            break;
            
        default:
            break;
    }
}

- (IBAction)showThird:(id)sender{
    fCThirdScreenViewController *controller = [[fCThirdScreenViewController alloc] init];
    
    [self presentViewController:controller animated:YES completion:nil];
    //[self.navigationController pushViewController:controller animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.title = @"Gelbe View";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
