//
//  ViewController.m
//  GVBFormula1
//
//  Created by Victor S Melo on 03/04/17.
//  Copyright © 2017 Victor S Melo. All rights reserved.
//

#import "ViewController.h"
#import "GVBDriverTableViewCell.h"
#import "GVBDriverModel.h"
#import "GVBDriver.h"
#import "GVBDetailsViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *driversTableView;

@property (nonatomic) GVBDriverModel *model;
@property (nonatomic) GVBDriver *driverToBeDetailed;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.model = [GVBDriverModel new];
    
    self.driversTableView.dataSource = self;

    self.driversTableView.delegate = self;

    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.shadowImage = [UIImage new];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor darkGrayColor]}];

    UINavigationBar *bar = [self.navigationController navigationBar];
    [bar setTintColor:[UIColor redColor]];
    
}

- (void)viewWillAppear:(BOOL)animated{
    
    [self.driversTableView reloadData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return self.model.drivers.count;
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
    
}

//- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
//    
//    return @"DRIVER STANDINGS";
//    
//}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return 72;
    
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{

    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 0)];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(87, 4, 69, 22)];
    titleLabel.text = @"DRIVER STANDINGS";
    
    UIFont *font = [UIFont fontWithName:@".SFUIText-Heavy" size:22];
    titleLabel.font = font;
    //titleLabel.textColor =  [UIColor colorWithRed:74 green:74 blue:74 alpha:1.0];
    titleLabel.textColor = [UIColor darkGrayColor];
    CGRect currentFrame = titleLabel.frame;
    currentFrame.size.width = tableView.frame.size.width;
    currentFrame.origin.x = 0;
    currentFrame.origin.y = 18;
    titleLabel.frame = currentFrame;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [headerView addSubview:titleLabel];
    
    tableView.tableHeaderView = headerView;
    return headerView;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    GVBDriverTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"driverCell"];
    
    cell.driver = self.model.drivers[indexPath.row];
    
    return cell;

}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    self.driverToBeDetailed = self.model.drivers[indexPath.row];;
    
    [self performSegueWithIdentifier:@"viewDriverDetailSegue" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    GVBDetailsViewController *destinationViewController = segue.destinationViewController;
    
    destinationViewController.name = self.driverToBeDetailed.name;
    
    NSLog(@"%@", self.driverToBeDetailed.name);
    
    destinationViewController.identifier = self.driverToBeDetailed.identifier;
    destinationViewController.team = self.driverToBeDetailed.team;
    destinationViewController.nationality = self.driverToBeDetailed.nationality;
    destinationViewController.worldPosition = self.driverToBeDetailed.worldPosition;
    destinationViewController.wons = self.driverToBeDetailed.wons;
    destinationViewController.podiuns = self.driverToBeDetailed.podiuns;
    destinationViewController.points = self.driverToBeDetailed.points;
    
}

@end
