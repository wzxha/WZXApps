# WZXApps
判断本机是否安装某些app <br>
To determine whether the installation of some app<br>
**期待你能和我一起完善它<br>**
**Expect you to be able to perfect it with me**

# 注意事项
~~目前需要手动添加URL Scheme到info，我将写一个Xcode插件.<br>~~
~~Currently need to manually add URL Scheme to info, I will write a Xcode plug-in.~~<br>
[WZXAppsHelper](https://github.com/Wzxhaha/WZXAppsHelper) 帮助你快速添加白名单到Info.plist.<br>
[WZXAppsHelper](https://github.com/Wzxhaha/WZXAppsHelper) Help you quickly add URL Scheme to Info.plist.

# API
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
