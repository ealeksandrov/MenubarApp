//
//  AppDelegate.m
//  MenubarTimer
//
//  Created by Evgeny Aleksandrov on 21.07.13.
//  Copyright (c) 2013 SomeCompany. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

#pragma mark - NSApplicationDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    NSString *bundleId = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleIdentifier"];
    NSString *bundleShortVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    NSString *bundleVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
    ALog(@"Starting %@ v%@ (%@)", bundleId, bundleShortVersion, bundleVersion);
    
    
    // Install icon into the menu bar
    self.menubarController = [[MenubarController alloc] init];
}

- (NSApplicationTerminateReply)applicationShouldTerminate:(NSApplication *)sender {
    // Explicitly remove the icon from the menu bar
    self.menubarController = nil;
    return NSTerminateNow;
}

#pragma mark - Actions

- (IBAction)togglePanel:(id)sender {
    self.menubarController.hasActiveIcon = !self.menubarController.hasActiveIcon;
}

@end
