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
        
        // INPUTS AND CONTROLS =================================================

        _frequencyValue = [[AKInstrumentProperty alloc] initWithValue:440
                                                              minimum:220
                                                              maximum:880];
        
        _carrierMultValue   = [[AKInstrumentProperty alloc] initWithValue:0.5
                                                                  minimum:0
                                                                  maximum:1];
        
        _modIndexValue   = [[AKInstrumentProperty alloc] initWithValue:0.5
                                                               minimum:0
                                                               maximum:1];
        
        _amplitudeValue   = [[AKInstrumentProperty alloc] initWithValue:0.25
                                                                minimum:0
                                                                maximum:0.5];
        
        [self addProperty:_frequencyValue];
        [self addProperty:_carrierMultValue];
        [self addProperty:_modIndexValue];
        [self addProperty:_amplitudeValue];
        
        // INSTRUMENT DEFINITION ===============================================

        AKFMOscillator *fmOscillator;
        fmOscillator = [[AKFMOscillator alloc] init];
        [self connect:fmOscillator];

        AKAudioOutput *audioOutput = [[AKAudioOutput alloc] initWithAudioSource:fmOscillator];
        [self connect:audioOutput];
    }
    return self;
}
@end