#import <Foundation/Foundation.h>
#import "Milliner.h"
#import "ClassVariablesExposer.h"

#define BOOLToNSString(b) (b) ? @"YES" : @"NO"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        [Milliner associateClassVariablesByName];
        NSString * actualFeatherType = [Milliner classValueForName:"featherType"];
        NSLog(@"Assert [[Milliner featherType] isEqualToString:@\"chicken hawk\"]: %@", BOOLToNSString([actualFeatherType isEqualToString:@"chicken hawk"]));
        
        // Since we got a pointer to the BOOL, this does track its value.
        NSLog(@"%@", BOOLToNSString([Milliner classBOOLForName:"waterproof"]));
        [Milliner flipWaterproof];
        NSLog(@"%@", BOOLToNSString([Milliner classBOOLForName:"waterproof"]));
        
    }
    return 0;
}
