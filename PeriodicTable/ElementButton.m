//
//  ElementButton.m
//  PeriodicTable
//
//  Created by david burrell on 1/8/15.
//  Copyright (c) 2015 SimpleGenius. All rights reserved.
//

#import "ElementButton.h"

@implementation ElementButton

- (void)drawRect:(NSRect)dirtyRect {
    
    [[NSImage imageNamed:@"YellowBG"] drawInRect:dirtyRect];
    
    [super drawRect:dirtyRect];
    

}


-(void)mouseDown:(NSEvent *)theEvent{
//NSLog(@"The Button Was Clicked %li", (long)self.tag);
    [super mouseDown:theEvent];
}

@end
