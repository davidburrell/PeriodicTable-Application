//
//  PeriodicTableWindow.h
//  PeriodicTable
//
//  Created by david burrell on 1/8/15.
//  Copyright (c) 2015 SimpleGenius. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PeriodicTableWindow : NSWindowController <NSTableViewDataSource, NSTableViewDelegate>
- (IBAction)onElementSelection:(id)sender;
@property (nonatomic, strong) NSArray *numbers;
@property (nonatomic, strong) NSArray *numberCodes;

@end
