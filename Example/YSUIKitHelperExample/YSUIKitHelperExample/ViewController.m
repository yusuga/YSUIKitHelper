//
//  ViewController.m
//  YSUIKitHelperExample
//
//  Created by Yu Sugawara on 2013/12/31.
//  Copyright (c) 2013年 Yu Sugawara. All rights reserved.
//

#import "ViewController.h"
#import "YSUIKitHelper.h"

#define YESorNOString(yesNo) yesNo ? @"YES" : @"NO"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self refresh];
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}

- (IBAction)refreshButtonDidPush:(id)sender
{
    [self refresh];
}

- (void)refresh
{
    self.textView.text = [NSString stringWithFormat:@"\
isPhone = %@\n\
isPad = %@\n\
deviceTypeStr = %@\n\
isRetina = %@\n\
is568h = %@\n\
isOrientationPortrait = %@\n\
isOrientationLandscape = %@\n\
isJapaneseLanguage = %@\n\
currentLanguage = %@\n\
currentISOCountryCode = %@\n\
appDisplayName = %@\n\
deviceName = %@\n\
hasAirDrop = %@\n\
isJailbroken = %@",
                          YESorNOString([YSUIKitHelper isPhone]),
                          YESorNOString([YSUIKitHelper isPad]),
                          [YSUIKitHelper deviceTypeStr],
                          YESorNOString([YSUIKitHelper isRetina]),
                          YESorNOString([YSUIKitHelper is568h]),
                          YESorNOString([YSUIKitHelper isOrientationPortrait]),
                          YESorNOString([YSUIKitHelper isOrientationLandscape]),
                          YESorNOString([YSUIKitHelper isJapaneseLanguage]),
                          [YSUIKitHelper currentLanguage],
                          [YSUIKitHelper currentISOCountryCode],
                          [YSUIKitHelper appDisplayName],
                          [YSUIKitHelper deviceName],
                          YESorNOString([YSUIKitHelper hasAirDrop]),
                          YESorNOString([YSUIKitHelper isJailbroken])];
}

@end
