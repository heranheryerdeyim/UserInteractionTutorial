//
//  NewInstrument.h
//  FirstInstrumentTutorial
//
//  Created by Nicholas Arner on 2/3/15.
//  Copyright (c) 2015 Nicholas Arner. All rights reserved.
//

#import "AKFoundation.h"

@interface NewInstrument : AKInstrument

@property (nonatomic, strong) AKInstrumentProperty *frequencyValue;
@property (nonatomic, strong) AKInstrumentProperty *carrierMultValue;
@property (nonatomic, strong) AKInstrumentProperty *modIndexValue;
@property (nonatomic, strong) AKInstrumentProperty *amplitudeValue;

@end
