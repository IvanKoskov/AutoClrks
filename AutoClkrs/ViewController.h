//
//  ViewController.h
//  AutoClkrs
//
//  Created by Evan Matthew on 18/11/2567 BE.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISwitch *injectioncheck;
- (IBAction)injectionstarted:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *appsListedtable;

@property (strong, nonatomic) NSArray *appNames; // Array to store app names
@property (strong, nonatomic) NSArray *bundleIDs; // Array to store app bundle identifiers
@end

