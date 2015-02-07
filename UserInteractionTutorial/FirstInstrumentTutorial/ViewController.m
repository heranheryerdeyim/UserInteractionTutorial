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
#import "AKTools.h"

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
- (IBAction)changeFrequency:(id)sender {
    [AKTools setProperty:newInstrument.frequencyValue withSlider:(UISlider *)sender];
}

- (IBAction)changeCarrierMultiplier:(id)sender {
    [AKTools setProperty:newInstrument.carrierMultValue withSlider:(UISlider *)sender];
}

- (IBAction)changeModIndex:(id)sender {
    [AKTools setProperty:newInstrument.modIndexValue withSlider:(UISlider *)sender];
}

- (IBAction)changeAmplitude:(id)sender {
    [AKTools setProperty:newInstrument.amplitudeValue withSlider:(UISlider *)sender];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end