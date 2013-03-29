// Milliner.m

#import "Milliner.h"

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

@end

#if UNIT_TESTING
#import "ClassVariablesExposer.h"
@interface Milliner (ExposeClassVariables)
@end

@implementation Milliner (ExposeClassVariables)

+ (void)associateClassVariablesByName
{
    ASSOC_OBJ_BY_NAME(featherType);
    ASSOC_BOOL_BY_NAME(waterproof);
}

@end
#endif /* UNIT_TESTING */
