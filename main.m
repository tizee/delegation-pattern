#import <Foundation/Foundation.h>
#import "my_delegate.h"

@interface MyController : NSObject<MyDelegate>
{
  MyObject* myObj;
}
-(void) have_fun;
-(void) keyboardTap:(MyObject*)keyboardTap noteKeystroke:(NSString*)keystroke;
-(void) keyboardTap:(MyObject*)keyboardTap noteFlagsChanged:(int)newFlags;
@end

@implementation MyController

-(id) init {
  if (!(self = [super init]))
  {
    return nil;
  }
  myObj = [MyObject new];
  myObj.delegate=self;
  return self;
}

-(void) have_fun {
  printf("Have fun with delegation.\n");
  NSString* test=@"The quick fox jumps over the lazy dog.";
  [myObj noteKeystroke:test];
  [myObj noteFlagsChanged:123];
  [test release];
}

-(void) dealloc {
  [myObj release];
  [super dealloc];
}

-(void) keyboardTap:(MyObject*)keyboardTap noteKeystroke:(NSString*)keystroke {
  NSLog(@"keystroke %@\n",keystroke);
  /* printf("keystroke\n"); */
}
-(void) keyboardTap:(MyObject*)keyboardTap noteFlagsChanged:(int)newFlags {
  NSLog(@"flags changed\n");
  /* printf("flags changed\n"); */
}

@end


int main(int argc, char *argv[])
{
  @autoreleasepool {
    MyController* controller = [[MyController alloc] init];
    [controller have_fun];
  }
  return 0;
}
// vim: ft=objcpp
