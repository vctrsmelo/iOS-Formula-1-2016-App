//
//  GVBDriverCellTableViewCell.m
//  GVBFormula1
//
//  Created by Victor S Melo on 03/04/17.
//  Copyright © 2017 Victor S Melo. All rights reserved.
//

#import "GVBDriverTableViewCell.h"
#import "GVBDriver.h"

@interface GVBDriverTableViewCell()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *teamLabel;

@property (weak, nonatomic) IBOutlet UILabel *pointsLabel;

@property (weak, nonatomic) IBOutlet UIImageView *profileImageView;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundTeam;
@property (weak, nonatomic) IBOutlet UILabel *positionLabel;
@property (weak, nonatomic) IBOutlet UIView *positionView;


@end

@implementation GVBDriverTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    //[super setSelected:selected animated:animated];
    
    //self.positionView.backgroundColor = [UIColor whiteColor];
    
}

-(void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
    
    
    
}

- (void)setDriver:(GVBDriver *)driver{
    
    _driver = driver;
    
    self.nameLabel.text = driver.name;
    self.teamLabel.text = driver.team;
    self.positionLabel.text = [NSString stringWithFormat:@"%d",driver.worldPosition];
    self.pointsLabel.text = [NSString stringWithFormat:@"%d", driver.points];
    self.profileImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",driver.name]];
    [self.profileImageView.layer setBorderColor:[[UIColor colorWithRed:249 green:249 blue:249 alpha:1.0] CGColor]];
    [self.profileImageView.layer setBorderWidth: 3];
    self.backgroundTeam.image = [UIImage imageNamed:[NSString stringWithFormat:@"cell%@",driver.team]];


}

@end
