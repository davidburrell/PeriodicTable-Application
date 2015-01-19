//
//  ElementManager.h
//  PeriodicTable
//
//  Created by david burrell on 1/18/15.
//  Copyright (c) 2015 SimpleGenius. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ElementManager : NSObject{
    NSDictionary *elements;
}

+(id)sharedManager;
-(NSDictionary*)returnElementWithNumber:(NSNumber*)atomicNumber;

@end
