//
//  MenuViewController.m
//  MySplit
//
//  Created by Akshay on 11/24/13.
//  Copyright (c) 2013 Akshay. All rights reserved.
//

#import "MenuViewController.h"
#import "TodayViewController.h"
#import "NewsViewController.h"
#import "SettingsViewController.h"
#import "DetailsViewManager.h"

@interface MenuViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *menuTableView;

@end

@implementation MenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Master";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Set appropriate labels for the cells.
    if (indexPath.row == 0) {
        cell.textLabel.text = @"Today";
    }
    else if (indexPath.row == 1){
        cell.textLabel.text = @"News";
    }
    else {
        cell.textLabel.text = @"Settings";
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Get a reference to the DetailViewManager.
    // DetailViewManager is the delegate of our split view.
    DetailsViewManager *detailViewManager = (DetailsViewManager*)self.splitViewController.delegate;
    NSUInteger row = indexPath.row;
    
    // Create and configure a new detail view controller appropriate for the selection.
    UIViewController <SubstitutableDetailViewController> *detailViewController = nil;
    TodayViewController *todayViewController = [[TodayViewController alloc] init];
    SettingsViewController *settingsViewController = [[SettingsViewController alloc]init];
    NewsViewController *newsViewController = [[NewsViewController alloc]init];
    if (row == 0)
    {
        detailViewController = todayViewController;
    }
    else if (row == 1)
    {
        detailViewController = newsViewController;
    }
    else {
        detailViewController = settingsViewController;
    }
    
    
    // DetailViewManager exposes a property, detailViewController.  Set this property
    // to the detail view controller we want displayed.  Configuring the detail view
    // controller to display the navigation button (if needed) and presenting it
    // happens inside DetailViewManager.
    detailViewManager.detailViewController = detailViewController;
}


@end
