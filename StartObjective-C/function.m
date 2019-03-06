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
- (double)getTBC: (NSArray *) array;
- (BOOL)checkElement: (int)number;
- (NSArray *)arrayElement: (NSArray *) array;
- (BOOL)checkVowel: (NSString*) originString;
- (NSString *)removeVowels: (NSString *)originalString;
- (void (^)(NSInteger, NSInteger))returnMaxMin:(int) number1 andNumber2: (int) number2;
- (void)getHour:(int *)hour minute:(int *)minute second:(int *)second;
- (void)getMaxMin: (int *)max min:(int *)min number1: (int)number1 number2: (int)number2;
@end
int main() {
    Function *func = [[Function alloc] init];
//    int getSum = [func sum:3 andNumber:4];
//    NSLog(@"Sum: %d", getSum);
//    NSArray* array = @[@1, @2, @3, @4];
//    int sumArray = [func sumArray: array];
//    NSLog(@"Sum: %d", sumArray);
//    void(^tuple)(NSInteger *, NSString **) = [func somethingThatReturnsATuple];
//    NSInteger num;
//    NSString *string;
//    tuple(&num, &string);
//    NSLog(@"Tuple: %ld %@", (long)num, string);
//    NSArray* array = @[@1, @2, @3, @4, @5, @6];
//    double getTBC = [func getTBC:array];
//    NSLog(@"Trung Binh Cong: %0.1f", getTBC);
//    BOOL check = [func checkElement:4];
//    NSLog(@"Check: %d", check);
//    NSArray *array = @[@1, @2, @3, @4, @5, @6, @7, @8, @9];
//    NSArray *newArray = [func arrayElement:array];
//    NSLog(@"Array Element: %@", newArray);
//    NSLog(@"Origin String: %@", originString);
//    BOOL check = [func checkVowel:@"g"];
//    NSLog(@"Check: %d", check);
//    NSString *originString = @"i can do it, you can do it";
//    NSString *removeVowels = [func removeVowels:originString];
//    NSLog(@"Remove Vowels: %@", removeVowels);
//    void(^tuple)(NSInteger max, NSInteger min) = [func returnMaxMin:3 andNumber2:10];
//    NSInteger max = 0, min = 0;
//    tuple(max, min);
//    NSLog(@"%ld %ld", (long)max, min);
//    int a, b, c;
//    [func getHour:&a minute:&b second:&c];
//    NSLog(@"%d, %d, %d", a, b, c);
    int max, min;
    [func getMaxMin:&max min:&min number1:10 number2:2];
    NSLog(@"%d, %d", max, min);
}
@implementation Function
- (void)getMaxMin:(int *)max min:(int *)min number1:(int)number1 number2:(int)number2 {
    if (number1 > number2) {
        *max = number1;
        *min = number2;
    } else {
        *max = number2;
        *min = number1;
    }
}
- (void)getHour:(int *)hour minute:(int *)minute second:(int *)second {
    *hour = 1;
    *minute = 2;
    *second = 3;
}
- (void (^)(NSInteger, NSInteger))returnMaxMin:(int)number1 andNumber2:(int)number2 {
    return ^(NSInteger max, NSInteger min) {
        if (number1 > number2) {
            max = number1;
            min = number2;
        } else {
            max = number2;
            min = number1;
        }
    };
}
- (NSString *)removeVowels:(NSString *)originalString {
    NSMutableArray *arrayRemove = [[NSMutableArray alloc] init];
    for (int i = 0; i < [originalString length]; i++) {
        NSString *newString = [originalString substringWithRange:NSMakeRange(i, 1)];
        if (![self checkVowel:newString]) {
            [arrayRemove addObject:newString];
        }
    }
    NSString *returnString = [[NSString alloc] init];
    for (int j = 0; j < [arrayRemove count]; j++) {
        NSString* str = arrayRemove[j];
        returnString = [returnString stringByAppendingString:str];
    }
    return returnString;
}
- (BOOL)checkVowel:(NSString *)originString {
    NSString *vowel = @"ueoaiUEOAI";
    for (int i = 0; i < [vowel length]; i++) {
        NSString* newString = [vowel substringWithRange:NSMakeRange(i, 1)];
        if ([newString isEqualToString:originString]) {
            return  YES;
        }
    }
    return NO;
}
- (NSArray *)arrayElement:(NSArray *)array {
    NSMutableArray *newArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < [array count]; i++) {
        int number = [array[i] intValue];
        if ([self checkElement:number] == YES) {
            [newArray addObject:@(number)];
        }
    }
    return  newArray;
}
- (BOOL)checkElement:(int)number {
    NSMutableArray * array = [[NSMutableArray alloc] init];
    for (int i = 2; i < number; i++) {
        if (number % 2 == 0) {
            [array addObject:@NO];
        } else {
            [array addObject:@YES];
        }
    }
    if ([array containsObject:@NO]) {
        return NO;
    }
    return YES;
}
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
- (double)getTBC:(NSArray *)array {
    int count = 0;
    double sum = 0;
    for (int i = 0; i < [array count]; i++) {
        count += 1;
        NSString* value = array[i];
        sum += [value doubleValue];
    }
    double tbc = sum/count;
    return tbc;
}
@end
