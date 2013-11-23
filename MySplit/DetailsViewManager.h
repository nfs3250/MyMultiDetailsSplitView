//
//  DetailsViewManager.h
//  MySplit
//
//  Created by Akshay on 11/24/13.
//  Copyright (c) 2013 Akshay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/*
 SubstitutableDetailViewController defines the protocol that detail view controllers must adopt.
 The protocol specifies aproperty for the bar button item controlling the navigation pane.
 */
@protocol SubstitutableDetailViewController

@property (nonatomic, retain) UIBarButtonItem *navigationPaneBarButtonItem;

@end

@interface DetailsViewManager : NSObject <UISplitViewControllerDelegate>

// The split view this class will be managing.
@property (nonatomic, strong) UISplitViewController *splitViewController;

// The presently displayed detail view controller.  This is modified by the various
// view controllers in the navigation pane of the split view controller.
@property (nonatomic, assign) UIViewController<SubstitutableDetailViewController> *detailViewController;

@end
