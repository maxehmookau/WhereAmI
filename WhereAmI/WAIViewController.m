//
//  WAIViewController.m
//  WhereAmI
//
//  Created by Max Woolf on 12/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "WAIViewController.h"
@interface WAIViewController ()
@end

@implementation WAIViewController

- (void)viewDidLoad
{
    manager = [[CLLocationManager alloc] init];
    pin = [[LocationPin alloc] init];
    [manager setDelegate:self];
    [manager startUpdatingLocation];
    [mapView setMapType:MKMapTypeSatellite];

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - CL Delegate
- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    [mapView removeAnnotation:pin];
    [mapView setRegion:MKCoordinateRegionMake(newLocation.coordinate, MKCoordinateSpanMake(0.002, 0.002))];
    pin = [[LocationPin alloc] initWithCoordinate:newLocation.coordinate andID:0];
    [mapView addAnnotations:[NSArray arrayWithObject:pin]];
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation {
    MKPinAnnotationView *pinView = (MKPinAnnotationView*)[mapView dequeueReusableAnnotationViewWithIdentifier:@"Pin"];
    if(pinView == nil) {
        pinView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"Pin"];
        pinView.pinColor = MKPinAnnotationColorGreen;
        pinView.animatesDrop = YES;
        pinView.canShowCallout = YES;
    } else {
        pinView.annotation = annotation;
    }
    return pinView;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
