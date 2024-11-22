//
//  autoclicksettingsviewViewController.h
//  AutoClkrs
//
//  Created by Evan Matthew on 18/11/2567 BE.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface autoclicksettingsviewViewController : UIViewController 


- (IBAction)closethemodalview:(id)sender;

@property (weak, nonatomic) IBOutlet UISlider *thespeedslider;
@property (weak, nonatomic) IBOutlet UISegmentedControl *thespeedsegmentedcontrol;

















@end

NS_ASSUME_NONNULL_END
