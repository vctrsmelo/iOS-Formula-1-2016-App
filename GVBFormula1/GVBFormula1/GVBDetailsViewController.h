//
//  GVBDetailsViewController.h
//  GVBFormula1
//
//  Created by Gabriel Machado on 04/04/17.
//  Copyright © 2017 Victor S Melo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GVBDetailsViewController : UIViewController

@property (nonatomic) int identifier;
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *team;
@property (nonatomic) NSString *nationality;
@property (nonatomic) int worldPosition;
@property (nonatomic) int wons;
@property (nonatomic) int podiuns;
@property (nonatomic) int points;

@end
