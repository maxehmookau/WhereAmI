//
//  LocationPin.m
//  WhereAmI
//
//  Created by Max Woolf on 12/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LocationPin.h"

@implementation LocationPin
@synthesize coordinate=_coordinate;
- (id)initWithCoordinate:(CLLocationCoordinate2D)coordinate{
    self = [super init];
    if (self != nil) {
        _coordinate = coordinate;
    }
    return self;
}

- (id)initWithCoordinate:(CLLocationCoordinate2D)coordinate andID:(NSUInteger)pinID{
    self = [super init];
    if (self != nil) {
        _coordinate = coordinate;
        _pinID = pinID;
    }
    return self;
}

- (NSString *)title {
    return [NSString stringWithFormat:@"Falmer House"];
}

- (NSString *)subtitle {
    return [NSString stringWithFormat:@"Home of the University of Sussex Students' Union"];
}
@end
