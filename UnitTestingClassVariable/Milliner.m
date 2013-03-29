// Milliner.m

#import "Milliner.h"

#if UNIT_TESTING
#import "ClassVariablesExposer.h"
#endif /* UNIT_TESTING */

@implementation Milliner
static NSString * featherType;
static BOOL waterproof;

+(void)initialize
{
    featherType = @"chicken hawk";
    waterproof = YES;
}

// Just for demonstration that the BOOL storage works.
+ (void)flipWaterproof
{
    waterproof = !waterproof;
}

#if UNIT_TESTING
+ (void)associateClassVariablesByName
{
    ASSOC_OBJ_BY_NAME(featherType);
    ASSOC_BOOL_BY_NAME(waterproof);
}
#endif /* UNIT_TESTING */

@end