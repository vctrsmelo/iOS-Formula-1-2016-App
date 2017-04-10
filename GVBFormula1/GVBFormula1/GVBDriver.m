//
//  GVBDriver.m
//  GVBFormula1
//
//  Created by Victor S Melo on 03/04/17.
//  Copyright © 2017 Victor S Melo. All rights reserved.
//

#import "GVBDriver.h"

@implementation GVBDriver

- (instancetype)initWithIdentifier:(int)identifier Name:(NSString *)name Team:(NSString *)team Nationality:(NSString *)nationality WorldPosition:(int)position Wons:(int)wons Podiuns:(int)podiuns AndPoints:(int)points
{

    self = [super init];
    if (self) {
        _identifier = identifier;
        _name = name;
        _team = team;
        _nationality = nationality;
        _worldPosition = position;
        _wons = wons;
        _podiuns = podiuns;
        _points = points;        
    }
    return self;

}

@end
