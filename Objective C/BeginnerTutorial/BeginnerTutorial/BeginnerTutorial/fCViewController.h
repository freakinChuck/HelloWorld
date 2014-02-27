//
//  fCViewController.h
//  BeginnerTutorial
//
//  Created by Silvio Stappung on 25.02.14.
//  Copyright (c) 2014 freakinChuck. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface fCViewController : UIViewController

@property (nonatomic, retain) IBOutlet UILabel *helloLabel;
@property (nonatomic, retain) IBOutlet UITextField *nameTextField;
@property (nonatomic, retain) IBOutlet UISegmentedControl *typeSelector;

- (IBAction) sayHello:(id)sender;
- (IBAction) alertHello:(id)sender;
- (IBAction)showThird:(id)sender;

@end
