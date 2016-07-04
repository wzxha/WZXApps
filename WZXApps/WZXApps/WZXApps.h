//
//  WZXApps.h
//  WZXApps
//
//  Created by WzxJiang on 16/7/4.
//  Copyright © 2016年 WzxJiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WZXApps : NSObject
typedef NS_ENUM(NSInteger, WZX_Apps) {
    WZXApps_WeChat,
    WZXApps_QQ,
    WZXApps_WeiBo,
    WZXApps_Facebook,
    WZXApps_Twitter,
    WZXApps_Instagram,
    WZXApps_Alipay,
};

+ (BOOL)wzx_haveWeChat;
+ (BOOL)wzx_haveQQ;
+ (BOOL)wzx_haveWeiBo;
+ (BOOL)wzx_haveFacebook;
+ (BOOL)wzx_haveTwitter;
+ (BOOL)wzx_haveInstagram;
+ (BOOL)wzx_haveAlipay;

+ (BOOL)wzx_haveThisApp:(WZX_Apps)app;
+ (BOOL)wzx_haveThisAppWithUrlScheme:(NSString *)urlScheme;
+ (BOOL)wzx_haveThisAppWithUrlSchemes:(NSArray <NSString *> *)urlSchemes;
@end
