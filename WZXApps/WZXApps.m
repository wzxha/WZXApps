//
//  WZXApps.m
//  WZXApps
//
//  Created by WzxJiang on 16/7/4.
//  Copyright © 2016年 WzxJiang. All rights reserved.
//

#import "WZXApps.h"

@implementation WZXApps

NSArray * Schemes(WZX_Apps app) {
    switch (app) {
        case WZXApps_QQ:
            return @[@"mqq",
                     @"mqqapi",
                     @"mqqOpensdkSSoLogin",
                     @"mqqopensdkapiV2",
                     @"mqqopensdkapiV3",
                     @"wtloginmqq2"];
            break;
        case WZXApps_Instagram:
            return @[@"instagram"];
            break;
        case WZXApps_Facebook:
            return @[@"fb",
                     @"fbauth2"];
            break;
        case WZXApps_Twitter:
            return @[@"twitter"];
            break;
        case WZXApps_WeChat:
            return @[@"wechat",
                     @"weixin"];
            break;
        case WZXApps_WeiBo:
            return @[@"sinaweibo",
                     @"sinaweibosso",
                     @"sinaweibohd",
                     @"weibosdk",
                     @"weibosdk2.5"];
            break;
        case WZXApps_Alipay:
            return @[@"alipay",
                     @"alipayshare"];
            break;
        default:
            return @[];
            break;
    }
}

+ (BOOL)wzx_haveWeChat {
    return [self _wzx_judgeHaveThisApp:Schemes(WZXApps_WeChat)];
}
+ (BOOL)wzx_haveQQ {
    return [self _wzx_judgeHaveThisApp:Schemes(WZXApps_QQ)];
}

+ (BOOL)wzx_haveWeiBo {
    return [self _wzx_judgeHaveThisApp:Schemes(WZXApps_WeiBo)];
}

+ (BOOL)wzx_haveFacebook {
    return [self _wzx_judgeHaveThisApp:Schemes(WZXApps_Facebook)];
}

+ (BOOL)wzx_haveTwitter {
    return [self _wzx_judgeHaveThisApp:Schemes(WZXApps_Twitter)];
}

+ (BOOL)wzx_haveInstagram {
    return [self _wzx_judgeHaveThisApp:Schemes(WZXApps_Instagram)];
}

+ (BOOL)wzx_haveAlipay {
    return [self _wzx_judgeHaveThisApp:Schemes(WZXApps_Alipay)];
}

+ (BOOL)wzx_haveThisApp:(WZX_Apps)app {
    return [self _wzx_judgeHaveThisApp:Schemes(app)];
}

+ (BOOL)wzx_haveThisAppWithUrlScheme:(NSString *)urlScheme {
    return [self _wzx_judgeHaveThisApp:@[urlScheme]];
}

+ (BOOL)wzx_haveThisAppWithUrlSchemes:(NSArray<NSString *> *)urlSchemes {
    return [self _wzx_judgeHaveThisApp:urlSchemes];
}

+ (BOOL)_wzx_judgeHaveThisApp:(NSArray <NSString *> *)urlSchemes {
    for (NSString * urlScheme in urlSchemes) {
         NSURL * appURL = [NSURL URLWithString:[NSString stringWithFormat:@"%@://location?id=1",urlScheme]];
        if ([[UIApplication sharedApplication] canOpenURL:appURL]) {
            return YES;
        }
    }
    return NO;
}

@end
