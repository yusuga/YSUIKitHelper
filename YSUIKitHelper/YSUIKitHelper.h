//
//  YSUIKitHelper.h
//  YSUIKitHelper
//
//  Created by Yu Sugawara on 2013/02/23.
//  Copyright (c) 2013年 Yu Sugawara. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YSUIKitHelper : NSObject

+ (BOOL)isPhone;
+ (BOOL)isPad;
+ (NSString*)deviceTypeStr; // e.g. @"iPhone", @"iPad"

+ (BOOL)isRetina;
+ (BOOL)is568h;

+ (BOOL)isOrientationPortrait;
+ (BOOL)isOrientationLandscape;

+ (BOOL)isJapaneseLanguage;
+ (NSString*)currentLanguage; // e.g. @"ja", @"en"
+ (NSString*)currentISOCountryCode; // e.g. @"JP", @"US"

+ (NSString*)appDisplayName; // ホーム画面に表示されるアプリ名
+ (NSString*)deviceName; // e.g. @"My iPhone"

+ (BOOL)hasAirDrop;

+ (BOOL)isGreaterThanThisSystemVersion:(NSString*)version; // versionより大きい
+ (BOOL)isGreaterThanOrEqualToThisSystemVersion:(NSString*)version; // version以上
+ (BOOL)isSmallerThanOrEqualToThisSystemVersion:(NSString*)version; // version以下
+ (BOOL)isSmallerThanThisSystemVersion:(NSString*)version; // version未満

+ (void)reloadAppearance;

+ (CGSize)statusBarSizeToConsideredTheRotation;

+ (BOOL)isJailbroken;

@end