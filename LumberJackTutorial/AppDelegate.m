//
//  AppDelegate.m
//  LumberJackTutorial
//
//  Created by Sergey Yuzepovich on 07.01.15.
//  Copyright (c) 2015 Sergey Yuzepovich. All rights reserved.
//

#import "AppDelegate.h"
#import <CocoaLumberjack/CocoaLumberjack.h>


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    [DDLog addLogger:[DDASLLogger sharedInstance]];
    [DDLog addLogger:[DDTTYLogger sharedInstance]];
    
    
    DDFileLogger *fileLogger = [[DDFileLogger alloc] init];
    fileLogger.rollingFrequency = 60 * 60 * 24; // 24 hour rolling
    fileLogger.logFileManager.maximumNumberOfLogFiles = 7;
    
    [DDLog addLogger:fileLogger];

    
    return YES;
}


@end
