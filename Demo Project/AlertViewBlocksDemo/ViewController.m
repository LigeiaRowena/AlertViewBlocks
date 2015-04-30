//
//  ViewController.m
//  AlertViewBlocksDemo
//
//  Created by Francesca Corsini on 16/09/14.
//  Copyright (c) 2014 Francesca Corsini. All rights reserved.
//

#import "ViewController.h"
#import "AlertViewBlocks.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)showAlert:(id)sender
{
	// shows a confirm alert with OK and NO buttons
	[[AlertViewBlocks getIstance] confirmAlertViewWithTitle:@"Title" message:@"Message" confirmBlock:^{
		// confirm block
	} cancelBlock:^{
		// cancel block
	}];
	
	// shows an error alert with OK button
	[[AlertViewBlocks getIstance] errorAlertViewWithTitle:@"Title" error:[NSError errorWithDomain:@"Domain" code:0 userInfo:@{}] confirmBlock:^{
		// confirm block
	}];
}


@end
