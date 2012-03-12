//
//  WAIViewController.h
//  WhereAmI
//
//  Created by Max Woolf on 12/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "LocationPin.h"

@interface WAIViewController : UIViewController <CLLocationManagerDelegate>
{
    IBOutlet MKMapView *mapView;
    CLLocationManager *manager;
    LocationPin *pin;
}
@end
