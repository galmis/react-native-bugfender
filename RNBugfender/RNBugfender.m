//
//  RNBugfender.m
//  RNBugfender
//
//  Created by admin on 14/06/2016.
//  Copyright © 2016 galminas. All rights reserved.
//

#import <BugfenderSDK/BugfenderSDK.h>

#import "RNBugfender.h"

@implementation RNBugfender

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(activateLogger: (NSString*)appToken) {
    dispatch_async(dispatch_get_main_queue(), ^{
        [Bugfender activateLogger: appToken];
    });
}

RCT_EXPORT_METHOD(info: (NSString*)logText) {
    BFLog(@"%@", logText);
}

RCT_EXPORT_METHOD(warning: (NSString*)logText) {
    BFLogWarn(@"%@", logText);
}

RCT_EXPORT_METHOD(error: (NSString*)logText) {
    BFLogErr(@"%@", logText);
}

RCT_EXPORT_METHOD(sendIssueWithTitle: (NSString*)title text:(NSString*)text) {
    [Bugfender sendIssueWithTitle:title text: text];
}

RCT_EXPORT_METHOD(enableUIEventLogging) {
    [Bugfender enableUIEventLogging];
}

RCT_EXPORT_METHOD(setMaximumLocalStorageSize:(NSUInteger)maximumLocalStorageSize) {
    [Bugfender setMaximumLocalStorageSize: maximumLocalStorageSize];
}

RCT_EXPORT_METHOD(forceSendOnce) {
    [Bugfender forceSendOnce];
}

RCT_EXPORT_METHOD(setForceEnabled:(BOOL)enabled) {
    [Bugfender setForceEnabled: enabled];
}

@end
