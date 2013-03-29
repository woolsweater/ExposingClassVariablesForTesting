//  ClassVariablesExposer.m

#import "ClassVariablesExposer.h"

#if UNIT_TESTING
@implementation NSObject (ClassVariablesExposer)

+ (void)associateClassVariablesByName
{
    // Stub to prevent warning about incomplete implementation.
}

+ (id)classValueForName:(char *)name
{
    return objc_getAssociatedObject(self, name);
}

+ (BOOL)classBOOLForName:(char *)name
{
    NSValue * v = [self classValueForName:name];
    BOOL * vp = [v pointerValue];
    return *vp;
}

@end
#endif /* UNIT_TESTING */