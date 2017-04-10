//
//  GVBDriverModel.h
//  GVBFormula1
//
//  Created by Victor S Melo on 04/04/17.
//  Copyright © 2017 Victor S Melo. All rights reserved.
//

#import <Foundation/Foundation.h>
@class GVBDriver;

@interface GVBDriverModel : NSObject

@property (nonatomic, readonly) NSArray *drivers;

- (void)addDriver:(GVBDriver *)driver;

@end
