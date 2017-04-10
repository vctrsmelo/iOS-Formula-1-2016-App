//
//  GVBDriver.h
//  GVBFormula1
//
//  Created by Victor S Melo on 03/04/17.
//  Copyright © 2017 Victor S Melo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GVBDriver : NSObject

@property (nonatomic) int identifier;
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *team;
@property (nonatomic) NSString *nationality;
@property (nonatomic) int worldPosition;
@property (nonatomic) int wons;
@property (nonatomic) int podiuns;
@property (nonatomic) int points;

- (instancetype)initWithIdentifier:(int)identifier Name:(NSString *)name Team:(NSString *)team Nationality:(NSString *)nationality WorldPosition:(int)position Wons:(int)wons Podiuns:(int)podiuns AndPoints:(int)points;

@end
