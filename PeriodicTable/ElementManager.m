//
//  ElementManager.m
//  PeriodicTable
//
//  Created by david burrell on 1/18/15.
//  Copyright (c) 2015 SimpleGenius. All rights reserved.
//

#import "ElementManager.h"

@implementation ElementManager
+(id)sharedManager{
    static ElementManager *sharedElementManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedElementManager = [[self alloc] init];
    });
    
    return sharedElementManager;
}


-(id)init{
    if(self = [super init]){
        
        elements = [self getElementData];
    }
    
    return self;
}

-(void)dealloc{
    // shouldn't be called
}

-(NSDictionary*)getElementData{
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"ElementData" ofType:@"plist"];
    
    NSDictionary *currentElementData = [NSDictionary dictionaryWithContentsOfFile:plistPath];
    
    return currentElementData;
}


-(NSDictionary*)returnElementWithNumber:(NSNumber *)atomicNumber{
    return [elements objectForKey:atomicNumber.stringValue];
}
@end
