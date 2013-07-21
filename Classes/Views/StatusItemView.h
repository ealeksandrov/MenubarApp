//
//  StatusItemView.h
//  MenubarTimer
//
//  Created by Evgeny Aleksandrov on 21.07.13.
//  Copyright (c) 2013 SomeCompany. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface StatusItemView : NSView

- (id)initWithStatusItem:(NSStatusItem *)statusItem;

@property (nonatomic, strong, readonly) NSStatusItem *statusItem;
@property (nonatomic, strong) NSImage *image;
@property (nonatomic, strong) NSImage *alternateImage;
@property (nonatomic, setter = setHighlighted:) BOOL isHighlighted;
@property (nonatomic, readonly) NSRect globalRect;
@property (nonatomic) SEL action;
@property (nonatomic, weak) id target;

@end
