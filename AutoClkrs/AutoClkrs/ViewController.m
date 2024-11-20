//
//  ViewController.m
//  AutoClkrs
//
//  Created by Evan Matthew on 18/11/2567 BE.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    
}



- (IBAction)injectionstarted:(id)sender {
    if (self.injectioncheck.isOn) {
        NSLog(@"working");
    } else {
        NSLog(@"NOOOO");
    }
}
@end
