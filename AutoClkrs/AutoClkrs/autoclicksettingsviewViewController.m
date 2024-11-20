#import "autoclicksettingsviewViewController.h"

@interface autoclicksettingsviewViewController ()

@end

@implementation autoclicksettingsviewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Set up the segmented control action
    [self.thespeedsegmentedcontrol addTarget:self
                                      action:@selector(speedSegmentChanged:)
                            forControlEvents:UIControlEventValueChanged];
    
    // Set the initial slider value
    [self speedSegmentChanged:self.thespeedsegmentedcontrol];
}

// Action for segmented control value change
- (void)speedSegmentChanged:(UISegmentedControl *)sender {
    NSInteger selectedIndex = sender.selectedSegmentIndex; // Read selected segment index
    NSLog(@"Selected Index: %ld", (long)selectedIndex); // Debug to check the value

    // Set slider value based on the selected segment
    if (selectedIndex == 0) {
        self.thespeedslider.value = 10; // Low
    } else if (selectedIndex == 1) {
        self.thespeedslider.value = 50; // Mid
    } else if (selectedIndex == 2) {
        self.thespeedslider.value = 100; // Max
    }
}

- (IBAction)closethemodalview:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)creditsopen:(id)sender {
}
@end
