//
//  PeriodicTableWindow.m
//  PeriodicTable
//
//  Created by david burrell on 1/8/15.
//  Copyright (c) 2015 SimpleGenius. All rights reserved.
//

#import "PeriodicTableWindow.h"
#import "ElementManager.h"
#import "Constants.h"

@interface PeriodicTableWindow ()

@end

@implementation PeriodicTableWindow{

    __weak IBOutlet NSImageView *MainImageWindow;
    ElementManager *theElementManager;
    NSDictionary *element;
    __weak IBOutlet NSTableView *TableView;
    
}
@synthesize numberCodes, numbers;

#pragma mark - test methods for initilizations of dummy data

-(NSArray *)createNumbers{
    if(!numbers){
        numbers = @[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10"];
    }
    
    return numbers;
}


-(NSArray *)createNumberCodes{
    if(!numberCodes){
        numberCodes = @[@"one",@"two",@"three",@"four",@"five",@"six",@"seven",@"eight",@"nine",@"ten"];
    }
    return numberCodes;
}


-(void)windowWillLoad{
    numberCodes = [self createNumberCodes];
    numbers = [self createNumbers];

}
- (void)windowDidLoad {
    [super windowDidLoad];
    [self.window setOpaque:false];
    [self.window setBackgroundColor:[NSColor colorWithRed:0.749 green:0.686 blue:0.698 alpha:0.95]];
    theElementManager = [ElementManager sharedManager];
    

    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (IBAction)onElementSelection:(NSButton*)sender {
    
    NSLog(@"Element number # %ld", (long)sender.tag);
    element = [theElementManager returnElementWithNumber:[NSNumber numberWithInt:(int)sender.tag]];
    NSString *imageName = [NSString stringWithFormat:@"%@.png",[element valueForKey:ElementFullNameKey]];
    
    MainImageWindow.image = [NSImage imageNamed:imageName];
    
    
}
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView{
    return self.numbers.count;
}

-(NSView*)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
    NSTableCellView *result = [tableView makeViewWithIdentifier:tableColumn.identifier owner:self];
       result.textField.stringValue = [numberCodes objectAtIndex:row];
        return result;
}
//- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
////    
////    NSTextField *result = [tableView makeViewWithIdentifier:@"MyView" owner:self];
////    
////
////    if(!result){
////        result = [[NSTextField alloc] initWithFrame:NSMakeRect(0, 0, tableColumn.width, 0)];
////    }
////    
////    
////    if([tableColumn.identifier isEqualToString:@"Label"]){
//////        return [numbers objectAtIndex:row];
////        [result setStringValue:@"something"];
////        return result;
////    }else if([tableColumn.identifier isEqualToString:@"Definition"]){
////        //return [numberCodes objectAtIndex:row];
////        [result setStringValue:@"something"];
////        return result;
////    }else{
////        return nil;
////    }
//
//    
//    NSTableCellView *result = [tableView makeViewWithIdentifier:tableColumn.identifier owner:self];
//    result.textField.stringValue = [numberCodes objectAtIndex:row];
//    return result;
//    
//}
//- (void)tableView:(NSTableView *)tableView willDisplayCell:(id)cell forTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
//    
//}
//- (BOOL)tableView:(NSTableView *)tableView shouldEditTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
//    return NO;
//}
@end
