# WZXApps
判断本机是否安装某些app <br>
To determine whether the installation of some app

# Api
```objc
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
```
