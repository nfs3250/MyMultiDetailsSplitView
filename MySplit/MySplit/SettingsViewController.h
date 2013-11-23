//
//  SettingsViewController.h
//  MySplit
//
//  Created by Akshay on 11/24/13.
//  Copyright (c) 2013 Akshay. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailsViewManager.h"

@interface SettingsViewController : UIViewController<SubstitutableDetailViewController>

@property (nonatomic, strong) UIBarButtonItem *navigationPaneBarButtonItem;

@end
