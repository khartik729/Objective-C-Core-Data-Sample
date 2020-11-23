//
//  SecondViewController.m
//  Core Data Example
//
//  Created by Khartik on 11/23/20.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.contactdb){
        [self.txtName setText:[self.contactdb valueForKey:@"fullname"]];
        [self.txtName setText:[self.contactdb valueForKey:@"email"]];
        [self.txtPhone setText:[self.contactdb valueForKey:@"phone"]];
    }
}

-(NSManagedObjectContext *)managedObjectContext{
    NSManagedObjectContext * context=nil;
    _delegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    if([_delegate respondsToSelector:@selector(persistentContainer)]){
        context = _delegate.persistentContainer.viewContext;
    }
    return context;
}

- (IBAction)btnSave:(UIButton *)sender {
    NSManagedObjectContext *context = [self managedObjectContext];
    if(self.contactdb){
        
        [self.contactdb setValue:self.txtName forKey:@"fullName"];
        
        [self.contactdb setValue:self.txtPhone forKey:@"phone"];
        
        [self.contactdb setValue:self.txtEmail forKey:@"email"];
        
    }else{
     
        NSManagedObject *newDevice = [NSEntityDescription insertNewObjectForEntityForName:@"Contacts" inManagedObjectContext:context];
        
        [newDevice setValue:self.txtName.text forKey:@"fullname"];
        [newDevice setValue:self.txtPhone forKey:@"phone"];
        [newDevice setValue:self.txtEmail forKey:@"email"];
        
    }
    NSError *error=nil;
    if(![context save:&error]){
        NSLog(@"The data can not be saved", error, [error localizedDescription]);
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)btnBack:(UIButton *)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];

}
@end
