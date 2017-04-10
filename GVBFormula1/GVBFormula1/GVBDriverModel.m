//
//  GVBDriverModel.m
//  GVBFormula1
//
//  Created by Victor S Melo on 04/04/17.
//  Copyright © 2017 Victor S Melo. All rights reserved.
//

#import "GVBDriverModel.h"
#import "GVBDriver.h"

@interface GVBDriverModel ()

@property (nonatomic) NSMutableArray *privateDrivers;

    
    
@end

@implementation GVBDriverModel


- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _privateDrivers = [NSMutableArray new];


        [self addDriver:[[GVBDriver alloc] initWithIdentifier: 6 Name: @"Nico Rosberg" Team:@"Mercedes" Nationality:@"GER" WorldPosition:1 Wons:9 Podiuns:16 AndPoints:385]];
        [self addDriver:[[GVBDriver alloc] initWithIdentifier: 44 Name: @"Lewis Hamilton" Team:@"Mercedes" Nationality:@"GBR" WorldPosition:2 Wons:10 Podiuns:17 AndPoints:380]];
        [self addDriver:[[GVBDriver alloc] initWithIdentifier: 3 Name: @"Daniel Ricciardo" Team:@"Red Bull Racing Tag Heuer" Nationality:@"AUS" WorldPosition:3 Wons:1 Podiuns:6 AndPoints:256]];
        [self addDriver:[[GVBDriver alloc] initWithIdentifier: 5 Name: @"Sebastian Vettel" Team:@"Ferrari" Nationality:@"GER" WorldPosition:4 Wons:0 Podiuns:7 AndPoints:212]];
        [self addDriver:[[GVBDriver alloc] initWithIdentifier: 33 Name: @"Max Verstappen" Team:@"Red Bull Racing Tag Heuer" Nationality:@"NED" WorldPosition:5 Wons:1 Podiuns:7 AndPoints:204]];
        [self addDriver:[[GVBDriver alloc] initWithIdentifier: 7 Name: @"Kimi Räikkönen" Team:@"Ferrari" Nationality:@"FIN" WorldPosition:6 Wons:0 Podiuns:4 AndPoints:186]];
        [self addDriver:[[GVBDriver alloc] initWithIdentifier: 11 Name: @"Sergio Perez" Team:@"Force India Mercedes" Nationality:@"MEX" WorldPosition:7 Wons:0 Podiuns:2 AndPoints:101]];
        [self addDriver:[[GVBDriver alloc] initWithIdentifier: 77 Name: @"Valtteri Bottas" Team:@"Williams" Nationality:@"FIN" WorldPosition:8 Wons:0 Podiuns:1 AndPoints:85]];
        [self addDriver:[[GVBDriver alloc] initWithIdentifier: 27 Name: @"Nico Hulkenberg" Team:@"Force India Mercedes" Nationality:@"GER" WorldPosition:9 Wons:0 Podiuns:0 AndPoints:72]];
        [self addDriver:[[GVBDriver alloc] initWithIdentifier: 14 Name: @"Fernando Alonso" Team:@"McLaren" Nationality:@"ESP" WorldPosition:10 Wons:0 Podiuns:0 AndPoints:54]];
        [self addDriver:[[GVBDriver alloc] initWithIdentifier: 19 Name: @"Felipe Massa" Team:@"Williams" Nationality:@"BRA" WorldPosition:11 Wons:0 Podiuns:0 AndPoints:53]];
        [self addDriver:[[GVBDriver alloc] initWithIdentifier: 55 Name: @"Carlos Sainz Jr" Team:@"Toro Rosso Ferrari" Nationality:@"ESP" WorldPosition:12 Wons:0 Podiuns:0 AndPoints:46]];
        [self addDriver:[[GVBDriver alloc] initWithIdentifier: 8 Name: @"Romain Grosjean" Team:@"Haas Ferrari" Nationality:@"GER" WorldPosition:13 Wons:0 Podiuns:0 AndPoints:29]];
        [self addDriver:[[GVBDriver alloc] initWithIdentifier: 26 Name: @"Daniil Kvyat" Team:@"Mercedes" Nationality:@"RUS" WorldPosition:14 Wons:0 Podiuns:1 AndPoints:25]];
        [self addDriver:[[GVBDriver alloc] initWithIdentifier: 22 Name: @"Jenson Button" Team:@"McLaren" Nationality:@"GBR" WorldPosition:15 Wons:0 Podiuns:0 AndPoints:21]];
        [self addDriver:[[GVBDriver alloc] initWithIdentifier: 20 Name: @"Kevin Magnussen" Team:@"Renault" Nationality:@"DEN" WorldPosition:16 Wons:0 Podiuns:0 AndPoints:7]];
        [self addDriver:[[GVBDriver alloc] initWithIdentifier: 12 Name: @"Felipe Nasr" Team:@"Sauber Ferrari" Nationality:@"GER" WorldPosition:17 Wons:0 Podiuns:0 AndPoints:2]];
        [self addDriver:[[GVBDriver alloc] initWithIdentifier: 30 Name: @"Jolyon Palmer" Team:@"Renault" Nationality:@"GBR" WorldPosition:18 Wons:0 Podiuns:0 AndPoints:1]];
        [self addDriver:[[GVBDriver alloc] initWithIdentifier: 94 Name: @"Pascal Wehrlein" Team:@"Mrt Mercedes" Nationality:@"GER" WorldPosition:19 Wons:0 Podiuns:0 AndPoints:1]];
        [self addDriver:[[GVBDriver alloc] initWithIdentifier: 47 Name: @"Stoffel Vandoorne" Team:@"McLaren" Nationality:@"BEL" WorldPosition:20 Wons:0 Podiuns:0 AndPoints:1]];
        [self addDriver:[[GVBDriver alloc] initWithIdentifier: 21 Name: @"Esteban Gutierrez" Team:@"Haas Ferrari" Nationality:@"MEX" WorldPosition:21 Wons:0 Podiuns:0 AndPoints:0]];
        [self addDriver:[[GVBDriver alloc] initWithIdentifier: 9 Name: @"Marcus Ericsson" Team:@"Sauber Ferrari" Nationality:@"SWE" WorldPosition:22 Wons:0 Podiuns:0 AndPoints:0]];
        [self addDriver:[[GVBDriver alloc] initWithIdentifier: 31 Name: @"Esteban Ocon" Team:@"Mrt Mercedes" Nationality:@"FRA" WorldPosition:23 Wons:0 Podiuns:0 AndPoints:0]];
        [self addDriver:[[GVBDriver alloc] initWithIdentifier: 88 Name: @"Rio Haryanato" Team:@"Mrt Mercedes" Nationality:@"INA" WorldPosition:24 Wons:0 Podiuns:0 AndPoints:0]];;
    }
    return self;
}

- (NSArray *)drivers {
    return [self.privateDrivers copy];
}

- (void)addDriver:(GVBDriver *)driver {
    [self.privateDrivers addObject:driver];
}

@end
