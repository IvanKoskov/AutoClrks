//
//  CustomTableViewController.m
//  AutoClkrs
//
//  Created by Evan Matthew on 19/11/2567 BE.
//

#import "CustomTableViewController.h"

@interface CustomTableViewController ()

@end

@implementation CustomTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 2;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)donatetodevs:(id)sender {
    
    
    
    UIAlertController *donateAlert = [UIAlertController alertControllerWithTitle:@"Donations"
                                                                          message:@"Thank you for your help!"
                                                                   preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *donateAction = [UIAlertAction actionWithTitle:@"Proceed"
                                                             style:UIAlertActionStyleDefault
                                                           handler:^(UIAlertAction * _Nonnull action) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://ivankoskov.github.io/donations-/"]];
        NSLog(@"User choose to visit donations.");
    }];
    
    
    [donateAlert addAction:donateAction];
    
    [self presentViewController:donateAlert animated:YES completion:nil];}

- (IBAction)supportlink:(id)sender {
    UIAlertController *supportAlert = [UIAlertController alertControllerWithTitle:@"You are about to leave the app"
                                                                          message:@"Visit our support page?"
                                                                   preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *continueAction = [UIAlertAction actionWithTitle:@"Continue"
                                                             style:UIAlertActionStyleDefault
                                                           handler:^(UIAlertAction * _Nonnull action) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://t.me/troll_app"]];
        NSLog(@"User chose to visit TG.");
    }];
    
    UIAlertAction *returnAction = [UIAlertAction actionWithTitle:@"Return"
                                                           style:UIAlertActionStyleCancel
                                                         handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"User cancelled.");
    }];
    
    [supportAlert addAction:continueAction];
    [supportAlert addAction:returnAction];
    
    // Present the alert
    [self presentViewController:supportAlert animated:YES completion:nil];
}


- (IBAction)setIconstand:(id)sender {
    if ([[UIApplication sharedApplication] supportsAlternateIcons] == NO)
            return;

    [[UIApplication sharedApplication] setAlternateIconName:nil
                                          completionHandler:^(NSError * _Nullable error) {
                                              NSLog(@"%@", [error description]);
                                          }];
}

- (IBAction)opentelegram:(id)sender {
    UIAlertController *tgAlert = [UIAlertController alertControllerWithTitle:@"You are about to leave the app" message:@"Do you want to visit Telegram?" preferredStyle:UIAlertControllerStyleAlert];
    
    
    UIAlertAction *okActionTwo = [UIAlertAction actionWithTitle:@"OK"
                                                       style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction * _Nonnull action) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"https://t.me/ipabuy"]];
                                                         NSLog(@"User chose to visit TG.");
                                                     }];
    
    UIAlertAction *cancelActiontwo = [UIAlertAction actionWithTitle:@"Cancel"
                                                           style:UIAlertActionStyleCancel
                                                         handler:^(UIAlertAction * _Nonnull action) {
                                                            
                                                             NSLog(@"User cancelled.");
                                                         }];
    
    [tgAlert addAction:okActionTwo];
    [tgAlert addAction:cancelActiontwo];
    [self presentViewController:tgAlert animated:YES completion:nil];
    
}

- (IBAction)openthemessagebox:(id)sender {
    UIAlertController *githubAlert = [UIAlertController alertControllerWithTitle:@"You are about to leave the app"
                                                                           message:@"Do you want to visit Github?"
                                                                    preferredStyle:UIAlertControllerStyleAlert];

 
      UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK"
                                                         style:UIAlertActionStyleDefault
                                                       handler:^(UIAlertAction * _Nonnull action) {
          [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"https://github.com/IvanKoskov"]];
                                                           NSLog(@"User chose to visit GitHub.");
                                                       }];

 
      UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel"
                                                             style:UIAlertActionStyleCancel
                                                           handler:^(UIAlertAction * _Nonnull action) {
                                                              
                                                               NSLog(@"User cancelled.");
                                                           }];


      [githubAlert addAction:okAction];
      [githubAlert addAction:cancelAction];

     
      [self presentViewController:githubAlert animated:YES completion:nil];
}

- (IBAction)setIconretro:(id)sender {
    
    
    if ([[UIApplication sharedApplication] supportsAlternateIcons] == NO)
            return;
        
    [[UIApplication sharedApplication] setAlternateIconName:@"icon_type_retro" //AlternateIcons key name
                                          completionHandler:^(NSError * _Nullable error) {
                                              NSLog(@"%@", [error description]);
                                          }];
    
}
@end
