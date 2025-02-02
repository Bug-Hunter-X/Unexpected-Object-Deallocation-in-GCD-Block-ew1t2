In Objective-C, a tricky error can occur when dealing with memory management and object lifetimes, especially when using blocks or Grand Central Dispatch (GCD).  Consider this example:

```objectivec
@interface MyClass : NSObject
@property (strong, nonatomic) NSString *myString;
@end

@implementation MyClass
- (void)someMethod {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        self.myString = [NSString stringWithFormat:@