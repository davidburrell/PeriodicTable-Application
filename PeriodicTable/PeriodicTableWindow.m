//
//  PeriodicTableWindow.m
//  PeriodicTable
//
//  Created by david burrell on 1/8/15.
//  Copyright (c) 2015 SimpleGenius. All rights reserved.
//

#import "PeriodicTableWindow.h"

@interface PeriodicTableWindow ()

@end

@implementation PeriodicTableWindow

- (void)windowDidLoad {
    [super windowDidLoad];
    [self.window setOpaque:false];
    [self.window setBackgroundColor:[NSColor colorWithRed:0.749 green:0.686 blue:0.698 alpha:0.95]];


    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (IBAction)onElementSelection:(id)sender {
    
    NSLog(@"ElementSelected");
    
}
@end
