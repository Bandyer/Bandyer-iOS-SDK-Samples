//
// Copyright © 2018-Present. Kaleyra S.p.a. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CallOptionsTableViewController;
@class CallOptionsItem;

NS_ASSUME_NONNULL_BEGIN

@protocol CallOptionsTableViewControllerDelegate <NSObject>

- (void)controllerDidUpdateOptions:(CallOptionsTableViewController *)controller;

@end

@interface CallOptionsTableViewController : UITableViewController

@property (nonatomic, weak, nullable) IBOutlet id <CallOptionsTableViewControllerDelegate> delegate;
@property (nonatomic, copy) CallOptionsItem *options;

@end

NS_ASSUME_NONNULL_END
