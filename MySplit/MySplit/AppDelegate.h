//
//  AppDelegate.h
//  MySplit
//
//  Created by Akshay on 11/24/13.
//  Copyright (c) 2013 Akshay. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DetailsViewManager;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, retain) UISplitViewController *splitViewController;
// DetailViewManager is assigned as the Split View Controller's delegate.
@property (nonatomic, retain) DetailsViewManager *detailViewManager;

@end
