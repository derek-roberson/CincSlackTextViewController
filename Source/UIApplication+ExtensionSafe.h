//
//  UIApplication+ExtensionSafe.h
//  SlackTextViewController
//
//  Created by Derek Roberson on 6/1/21.
//  Copyright © 2021 Slack Technologies, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIApplication (ExtensionSafe)

+(UIApplication *)safeSharedApplication;

@end
