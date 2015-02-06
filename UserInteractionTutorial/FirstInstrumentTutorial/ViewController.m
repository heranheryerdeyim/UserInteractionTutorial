//
//  ViewController.m
//  FirstInstrumentTutorial
//
//  Created by Nicholas Arner on 2/3/15.
//  Copyright (c) 2015 Nicholas Arner. All rights reserved.
//

#import "ViewController.h"

#import "AKFoundation.h"
#import "NewInstrument.h"

@implementation ViewController

{
    NewInstrument *newInstrument;
    BOOL isNewInstrumentPlaying;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    newInstrument = [[NewInstrument alloc] init];
    [AKOrchestra addInstrument:newInstrument];
    [AKOrchestra start];
}

- (IBAction)toggleInstrument:(id)sender {
    if (isNewInstrumentPlaying) {
        [newInstrument stop];
        isNewInstrumentPlaying = NO;
    } else {
        [newInstrument play];
        isNewInstrumentPlaying = YES;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end