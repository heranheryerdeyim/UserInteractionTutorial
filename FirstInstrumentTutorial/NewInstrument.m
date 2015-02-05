//
//  NewInstrument.m
//  FirstInstrumentTutorial
//
//  Created by Nicholas Arner on 2/3/15.
//  Copyright (c) 2015 Nicholas Arner. All rights reserved.
//

#import "NewInstrument.h"

@implementation NewInstrument

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        AKFMOscillator *fmOscillator;
        fmOscillator = [[AKFMOscillator alloc] init];
        [self connect:fmOscillator];

        AKAudioOutput *audioOutput = [[AKAudioOutput alloc] initWithAudioSource:fmOscillator];
        [self connect:audioOutput];
    }
    return self;
}
@end