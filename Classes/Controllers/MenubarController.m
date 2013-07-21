//
//  MenubarController.m
//  MenubarTimer
//
//  Created by Evgeny Aleksandrov on 21.07.13.
//  Copyright (c) 2013 SomeCompany. All rights reserved.
//

#import "MenubarController.h"

@implementation MenubarController

#pragma mark -

- (id)init {
    self = [super init];
    if (self != nil)
    {
        // Install status item into the menu bar
        NSStatusItem *statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:STATUS_ITEM_VIEW_WIDTH];
        _statusItemView = [[StatusItemView alloc] initWithStatusItem:statusItem];
        _statusItemView.image = [NSImage imageNamed:@"Status"];
        _statusItemView.alternateImage = [NSImage imageNamed:@"StatusHighlighted"];
        _statusItemView.action = @selector(togglePanel:);
    }
    return self;
}

- (void)dealloc {
    [[NSStatusBar systemStatusBar] removeStatusItem:self.statusItem];
}

#pragma mark - Public accessors

- (NSStatusItem *)statusItem {
    return self.statusItemView.statusItem;
}

#pragma mark -

- (BOOL)hasActiveIcon {
    return self.statusItemView.isHighlighted;
}

- (void)setHasActiveIcon:(BOOL)flag {
    self.statusItemView.isHighlighted = flag;
}

@end
