//
//  SecondViewController.h
//  Core Data Example
//
//  Created by Khartik on 11/23/20.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "AppDelegate.h"


@interface SecondViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *txtName;

@property (strong, nonatomic) IBOutlet UITextField *txtEmail;

@property (strong, nonatomic) IBOutlet UITextField *txtPhone;


- (IBAction)btnBack:(UIButton *)sender;

- (IBAction)btnSave:(UIButton *)sender;


@property (strong, nonatomic)AppDelegate * delegate;

@property (strong)NSManagedObject *contactdb;

@end

