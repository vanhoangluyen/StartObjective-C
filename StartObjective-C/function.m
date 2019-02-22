//
//  function.m
//  StartObjective-C
//
//  Created by Apple on 2/22/19.
//  Copyright © 2019 LuyenMP. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Function: NSObject
- (int)sum: (int) number1 andNumber: (int) number2;
- (int)sumArray: (NSArray*) array;
- (void (^)(NSInteger *, NSString *__autoreleasing *))somethingThatReturnsATuple;
@end
int main() {
    Function *func = [[Function alloc] init];
//    int getSum = [func sum:3 andNumber:4];
//    NSLog(@"Sum: %d", getSum);
//    NSArray* array = @[@1, @2, @3, @4];
//    int sumArray = [func sumArray: array];
//    NSLog(@"Sum: %d", sumArray);
    void(^tuple)(NSInteger *, NSString **) = [func somethingThatReturnsATuple];
    NSInteger num;
    NSString *string;
    tuple(&num, &string);
    NSLog(@"Tuple: %ld %@", (long)num, string);
}
@implementation Function
- (int)sum:(int)number1 andNumber:(int)number2 {
    int sum = number1 + number2;
    return sum;
}
- (int)sumArray:(NSArray *)array {
    int sum = 0;
    for (int i = 0; i < [array count]; i++) {
        NSString* value = array[i];
        sum += [value intValue];
    }
    return sum;
}
- (void (^)(NSInteger *, NSString *__autoreleasing *))somethingThatReturnsATuple {
    return ^(NSInteger*n, NSString **s) {
        *n = 8;
        *s = @"Tuple";
    };
}
@end
