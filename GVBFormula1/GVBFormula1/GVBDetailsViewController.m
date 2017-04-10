//
//  GVBDetailsViewController.m
//  GVBFormula1
//
//  Created by Gabriel Machado on 04/04/17.
//  Copyright © 2017 Victor S Melo. All rights reserved.
//

#import "GVBDetailsViewController.h"

@interface GVBDetailsViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *teamBackgroundImage;
@property (weak, nonatomic) IBOutlet UIImageView *teamBackgroundTexture;
@property (weak, nonatomic) IBOutlet UIImageView *driverImage;
@property (weak, nonatomic) IBOutlet UILabel *positionLabel;
@property (weak, nonatomic) IBOutlet UILabel *identifierLabel;
@property (weak, nonatomic) IBOutlet UILabel *driverNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *driverTeamLabel;
@property (weak, nonatomic) IBOutlet UILabel *wonsLabel;
@property (weak, nonatomic) IBOutlet UILabel *podiunsLabel;
@property (weak, nonatomic) IBOutlet UILabel *pointsLabel;
@property (weak, nonatomic) IBOutlet UIImageView *countryFlagImage;
@property (weak, nonatomic) IBOutlet UIImageView *driverHelmet;
@property (weak, nonatomic) IBOutlet UIImageView *teamCarImage;

@end

@implementation GVBDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.driverImage.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",self.name]];
    [self.driverImage.layer setBorderColor:[[UIColor colorWithRed:249 green:249 blue:249 alpha:1.0] CGColor]];
    [self.driverImage.layer setBorderWidth: 4];

    self.teamBackgroundImage.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@ BGCar",self.name]];
    
    self.driverHelmet.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@ Helmat",self.name]];
    
    self.teamBackgroundTexture.image = [UIImage imageNamed:[NSString stringWithFormat:@"detailsBg%@",self.team]];
    
    self.positionLabel.text = [NSString stringWithFormat:@"%dº place",self.worldPosition];
    
    self.podiunsLabel.text = [NSString stringWithFormat:@"%d",self.podiuns];
    
    self.pointsLabel.text = [NSString stringWithFormat:@"%d", self.points];
    
    self.wonsLabel.text = [NSString stringWithFormat:@"%d", self.wons];
    
    self.driverNameLabel.text = self.name;

    self.driverTeamLabel.text = self.team;
    
    self.countryFlagImage.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",self.nationality]];
    
    self.teamCarImage.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@Car",self.team]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
