//
//  TodayViewController.m
//  MySplit
//
//  Created by Akshay on 11/24/13.
//  Copyright (c) 2013 Akshay. All rights reserved.
//

#import "TodayViewController.h"

@interface TodayViewController ()

@end

@implementation TodayViewController

@synthesize navigationPaneBarButtonItem;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Today";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    UILabel *lblToday = [[UILabel alloc]initWithFrame:CGRectMake(300, 200, 250, 50)];
    lblToday.text = @"Today VC";
    lblToday.font = [UIFont systemFontOfSize:30];
    [self.view addSubview:lblToday];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
