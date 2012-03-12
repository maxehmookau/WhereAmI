//
//  LocationPin.h
//  WhereAmI
//
//  Created by Max Woolf on 12/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface LocationPin : NSObject <MKAnnotation>
{
    CLLocationCoordinate2D _coordinate; 
    NSUInteger _pinID;
}
- (id)initWithCoordinate:(CLLocationCoordinate2D)coordinate andID:(NSUInteger)pinID;
@end
