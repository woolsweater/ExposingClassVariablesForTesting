//  ClassVariablesExposer.h

#if UNIT_TESTING
#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@protocol ClassVariablesExposer

+ (void)associateClassVariablesByName;

@end

#define ASSOC_OBJ_BY_NAME(v) objc_setAssociatedObject(self, #v, v, OBJC_ASSOCIATION_ASSIGN)
#define ASSOC_BOOL_BY_NAME(b) NSValue * val = [NSValue valueWithPointer:&b];\
objc_setAssociatedObject(self, #b, val, OBJC_ASSOCIATION_RETAIN)

@interface NSObject (ClassVariablesExposer) <ClassVariablesExposer>

+ (id)classValueForName:(char *)name;
+ (BOOL)classBOOLForName:(char *)name;

@end
#endif /* UNIT_TESTING */
