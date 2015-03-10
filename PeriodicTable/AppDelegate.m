//
//  AppDelegate.m
//  PeriodicTable
//
//  Created by david burrell on 1/8/15.
//  Copyright (c) 2015 SimpleGenius. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()
{

}

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    if (thePeriodicTable == NULL) {
        thePeriodicTable = [[PeriodicTableWindow alloc] initWithWindowNibName:@"PeriodicTableWindow"];
        [thePeriodicTable showWindow:self];
    }
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}
-(BOOL)applicationShouldHandleReopen:(NSApplication *)sender hasVisibleWindows:(BOOL)flag{
    if ( flag ) {
           if (thePeriodicTable == NULL) {
               thePeriodicTable = [[PeriodicTableWindow alloc] initWithWindowNibName:@"PeriodicTableWindow"];
               [thePeriodicTable showWindow:self];
           }
           
    }
    else {
        [thePeriodicTable.window makeKeyAndOrderFront:self];
    }
    
    return YES;
}
@end
