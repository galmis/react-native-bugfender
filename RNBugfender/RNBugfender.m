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

RCT_EXPORT_METHOD(initialise) {
    // Activate the remote logger with an App Key.
    [Bugfender enableAllWithToken:@"YOUR_API_KEY"];
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

@end
