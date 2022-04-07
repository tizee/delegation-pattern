#ifndef MY_DELEGATE_H
#define MY_DELEGATE_H
#import <Foundation/Foundation.h>
@class MyObject;

@protocol MyDelegate
-(void) keyboardTap:(MyObject*)keyboardTap noteKeystroke:(NSString*)keystroke;
-(void) keyboardTap:(MyObject*)keyboardTap noteFlagsChanged:(int)newFlags;
@end

@interface MyObject : NSObject {
    // conforming to protocol
    id<MyDelegate> _delegate;
}

@property(nonatomic, assign)id <MyDelegate> delegate;

-(void) noteKeystroke:(NSString*)keystroke;
-(void) noteFlagsChanged:(int)newFlags;

@end

#endif /* ifndef SYMBOL */

// vim: ft=objcpp
