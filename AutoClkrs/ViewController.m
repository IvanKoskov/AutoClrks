#import "ViewController.h"
#import "MobileInstallation.h"


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Initialize the arrays
    self.appNames = [NSArray array];
    self.bundleIDs = [NSArray array];
    
    // Call function to get installed apps and update the table
    [self loadInstalledApps];
}

- (void)loadInstalledApps {
    // Create the dictionary with options for MobileInstallationLookup
    NSDictionary *options = @{
        @"ReturnAttributes": @"BundleIDs" // We want BundleIDs for each app
    };
    
    // Call MobileInstallationLookup to get installed apps
    CFDictionaryRef apps = MobileInstallationLookup((__bridge CFDictionaryRef)options);
    
    // Process the apps returned and populate the arrays
    if (apps) {
        NSArray *appsArray = (__bridge NSArray *)CFDictionaryGetValue(apps, CFSTR("Apps"));
        NSMutableArray *names = [NSMutableArray array];
        NSMutableArray *bundles = [NSMutableArray array];
        
        for (NSDictionary *app in appsArray) {
            NSString *appName = app[@"ApplicationName"];
            NSString *bundleID = app[@"CFBundleIdentifier"];
            
            if (appName && bundleID) {
                [names addObject:appName];
                [bundles addObject:bundleID];
            }
        }
        
        // Update the data arrays and reload the table
        self.appNames = names;
        self.bundleIDs = bundles;
        
        [self.appsListedtable reloadData];
    }
}

#pragma mark - UITableView DataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.appNames.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    // Populate the cell with app name and bundle ID
    cell.textLabel.text = self.appNames[indexPath.row];
    cell.detailTextLabel.text = self.bundleIDs[indexPath.row];
    
    return cell;
}

#pragma mark - Injection Button Action

- (IBAction)injectionstarted:(id)sender {
    // Handle injection process
}

@end
