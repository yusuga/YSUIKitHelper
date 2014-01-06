//
//  UINavigationController+iOS7Rotation.m
//  YSUIKitHelperExample
//
//  Created by Yu Sugawara on 2014/01/01.
//  Copyright (c) 2014年 Yu Sugawara. All rights reserved.
//

#import "UINavigationController+iOS7Rotation.h"

@implementation UINavigationController (iOS7Rotation)

- (NSUInteger)supportedInterfaceOrientations
{
    return [self.viewControllers.lastObject supportedInterfaceOrientations];
}

- (BOOL)shouldAutorotate
{
    return [self.viewControllers.lastObject shouldAutorotate];
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return [self.viewControllers.lastObject preferredInterfaceOrientationForPresentation];
}

@end
