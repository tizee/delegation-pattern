#import "my_delegate.h"

@implementation MyObject
@synthesize delegate=_delegate;

-(id) init {
  if (!(self = [super init])) {
    return nil;
  }
  return self;
}

-(void) dealloc {
  [super dealloc];
}

-(void) noteKeystroke:(NSString*)keystroke {
[self.delegate keyboardTap:self noteKeystroke:keystroke ];
}

-(void) noteFlagsChanged:(int)newFlags {
[self.delegate keyboardTap:self noteFlagsChanged:newFlags];
}
@end

// vim: ft=objcpp
