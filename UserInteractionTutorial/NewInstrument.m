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
        [self addProperty:_frequencyValue];

        
        _carrierMultValue   = [[AKInstrumentProperty alloc] initWithValue:0.5
                                                                  minimum:0
                                                                  maximum:1];
        [self addProperty:_carrierMultValue];

        
        _modIndexValue   = [[AKInstrumentProperty alloc] initWithValue:0.5
                                                               minimum:0
                                                               maximum:1];
        [self addProperty:_modIndexValue];

        
        _amplitudeValue   = [[AKInstrumentProperty alloc] initWithValue:0.25
                                                                minimum:0
                                                                maximum:0.5];
        
        [self addProperty:_amplitudeValue];
        
        // INSTRUMENT DEFINITION ===============================================

        AKFMOscillator *fmOscillator;
        fmOscillator = [[AKFMOscillator alloc] init];
        fmOscillator.baseFrequency     = _frequencyValue;
        fmOscillator.carrierMultiplier = _carrierMultValue;
        fmOscillator.modulationIndex   = _modIndexValue;
        fmOscillator.amplitude         = _amplitudeValue;
        
        [self connect:fmOscillator];

        // AUDIO OUTPUT ========================================================

        AKAudioOutput *audioOutput = [[AKAudioOutput alloc] initWithAudioSource:fmOscillator];
        [self connect:audioOutput];
    }
    return self;
}
@end