//
//  VKRSFlipsideViewController.m
//  AppSoundEngineDemo
//
//  Created by Vilem Kurz on 3.11.2011.
//  Copyright (c) 2011 Cocoa Miners. All rights reserved.
//

#import "VKRSFlipsideViewController.h"
#import "VKRSAppDelegate.h"

@implementation VKRSFlipsideViewController

@synthesize delegate = _delegate;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Actions

- (IBAction)done:(id)sender
{
    [(VKRSAppDelegate *)[[UIApplication sharedApplication] delegate] playSound:@"touch"];
    [(VKRSAppDelegate *)[[UIApplication sharedApplication] delegate] playSound:@"flip"];
    [self.delegate flipsideViewControllerDidFinish:self];
}

- (IBAction)play:(id)sender {

    [(VKRSAppDelegate *)[[UIApplication sharedApplication] delegate] playSound:@"flip"];
}


@end
