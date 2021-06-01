//
//  UIApplication+ExtensionSafe.m
//  SlackTextViewController
//
//  Created by Derek Roberson on 6/1/21.
//  Copyright © 2021 Slack Technologies, Inc. All rights reserved.
//

#import "UIApplication+ExtensionSafe.h"

@implementation UIApplication (ExtensionSafe)

+ (BOOL)isAppExtension
{
		return [[self class] safeSharedApplication] == nil;
}

+ (UIApplication *)safeSharedApplication
{
		UIApplication *safeSharedApplication = nil;

		if ([UIApplication respondsToSelector:@selector(sharedApplication)]) {
			safeSharedApplication = [UIApplication performSelector:@selector(sharedApplication)];
		}
		if (!safeSharedApplication.delegate) {
			safeSharedApplication = nil;
		}

		return safeSharedApplication;
}

@end
