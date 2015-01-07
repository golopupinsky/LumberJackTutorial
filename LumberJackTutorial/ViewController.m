//
//  ViewController.m
//  LumberJackTutorial
//
//  Created by Sergey Yuzepovich on 07.01.15.
//  Copyright (c) 2015 Sergey Yuzepovich. All rights reserved.
//

#import "ViewController.h"
#import <CocoaLumberjack/CocoaLumberjack.h>


#ifdef DEBUG
static const int ddLogLevel = DDLogLevelVerbose;
#else
static const int ddLogLevel = DDLogLevelError;
#endif

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)info:(id)sender {
    DDLogInfo(@"Info");
}
- (IBAction)warn:(id)sender {
    DDLogWarn(@"Warn");
}
- (IBAction)error:(id)sender {
    DDLogError(@"Error");
}
- (IBAction)verbose:(id)sender {
    DDLogVerbose(@"Verbose");
}
- (IBAction)debug:(id)sender {
    DDLogDebug(@"Debug");
}


@end
