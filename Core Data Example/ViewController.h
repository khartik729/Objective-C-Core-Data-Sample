//
//  ViewController.h
//  Core Data Example
//
//  Created by Khartik on 11/23/20.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property(strong)NSMutableArray *contactArray;

@property(strong, nonatomic)AppDelegate *delegate;

@end

