//
//  AppDelegate.h
//  MenubarTimer
//
//  Created by Evgeny Aleksandrov on 21.07.13.
//  Copyright (c) 2013 SomeCompany. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MenubarController.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;   //delete this?
@property (nonatomic, strong) MenubarController *menubarController;

- (IBAction)togglePanel:(id)sender;

@end
