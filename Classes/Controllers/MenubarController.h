//
//  MenubarController.h
//  MenubarTimer
//
//  Created by Evgeny Aleksandrov on 21.07.13.
//  Copyright (c) 2013 SomeCompany. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StatusItemView.h"

#define STATUS_ITEM_VIEW_WIDTH 24.0

#pragma mark -

@interface MenubarController : NSObject

@property (nonatomic) BOOL hasActiveIcon;
@property (nonatomic, strong, readonly) NSStatusItem *statusItem;
@property (nonatomic, strong, readonly) StatusItemView *statusItemView;


@end
