//
//  main.m
//  StartObjective-C
//
//  Created by LuyenMP on 6/25/18.
//  Copyright © 2018 LuyenMP. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface SimpleValue:NSObject
/* method declaration */
- (void)daclareSimple;
- (int)sum: (int) number1 andNum: (int) number2;

@end
@implementation SimpleValue

- (void)daclareSimple {
    // insert code here...
    //Print to console a line "Hello world!"
    //NSLog(@"Hello, World!");
    //MARK: - create a variable
    /*
     int myInterger = 20;
     myInterger = 40;
     NSLog(@"myVariable: %d",myInterger);
     
     NSString *myString = @"Hello";
     myString = @"Hello, world !!!";
     NSLog(@"myString: %@", myString);
     
     double myDouble = 40;
     myDouble = 50;
     NSLog(@"myDouble: %f", myDouble);
     
     float myFloat = 10;
     myFloat = 30;
     NSLog(@"My Float: %f", myFloat);
     
     NSNumber *number = [NSNumber numberWithInt:10];
     number = [NSNumber numberWithInt:20];
     NSLog(@"my number: %@", number);
     
     NSNumber* number = [NSNumber numberWithFloat:10];
     number = [NSNumber numberWithFloat:30];
     NSLog(@"Number: %@", number);
     
     NSNumber* number = [NSNumber numberWithBool:YES];
     number = [NSNumber numberWithBool:NO];
     NSLog(@"Number: %@", number);
     
     int number1 = 10;
     NSString *myString = @"Hello";
     NSLog(@"multi value: %d %@", number1, myString);
     
     NSArray* myArray = @[@1, @2, @3, @4];
     NSLog(@"my Array: %@", myArray);
     for (int i = 0; i<[myArray count]; i++) {
     NSLog(@"index: %d %@ ", i, myArray[i]);
     }
     
     const int myNumber = 10;
     myNumber = 20;
     NSLog(@"My Number: %d", myNumber);
     
     NSMutableArray* myArray = [[NSMutableArray alloc] initWithArray:@[@1, @2, @3]];
     myArray[3] = @30;
     NSLog(@"My Array: %@", myArray);
     
     NSMutableArray *myArray = [[NSMutableArray alloc] init];
     for (int i = 0; i < 100; i++) {
     [myArray addObject:@(i)];
     }
     NSLog(@"My Array: %@", myArray);
     
     NSMutableArray* myArray = [[NSMutableArray alloc] initWithArray:@[@1, @2, @3]];
     [myArray removeObject:@(3)];
     NSLog(@"My Array: %@", myArray);
     NSMutableArray* myArray = [[NSMutableArray alloc] initWithObjects:@"Hello", nil];
     myArray[1] = @"Not Nill";
     NSLog(@"My Array: %@", myArray);
     
     NSDictionary *myDictionary = [[NSDictionary alloc] initWithObjectsAndKeys: @1, @"One", @2, @"Two", @3, @"Three", nil];
     NSLog(@"My Dictionary: %@", myDictionary);
     for (id key in myDictionary) {
     NSLog(@"Key and value: %@ %@", key, myDictionary[key]);
     }
     NSMutableDictionary *myDictionary = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@1, @"One", @2, @"Two", @3, @"Three", nil];
     myDictionary[@"Two"] = @222;
     NSLog(@"My Dictionary: %@", myDictionary);
     
     NSMutableDictionary *myDictionary = [[NSMutableDictionary alloc] init];
     [myDictionary setObject:@222 forKey:@"Two"];
     NSLog(@"My Dictionary: %@", myDictionary);
     
     NSMutableDictionary *myDictionary = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@1, @"One", @2, @"Two", @3, @"Three", nil];
     [myDictionary removeObjectForKey:@"Three"];
     NSLog(@"My Dictionary: %@", myDictionary);
     
     NSMutableDictionary *myDictionary = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@1, @"One", @2, @"Two", @3, @"Three", nil];
     NSArray *array = @[@1, @2, @3, @4];
     [myDictionary setObject:array forKey:@"Array"];
     NSLog(@"My Dictionary: %@", myDictionary);
     */
    
    //Mark: - Convert
    /*
     int number = 10;
     NSLog(@"Number: %d", number);
     NSString *newString = [NSString stringWithFormat:@"%d", number ];
     NSLog(@"New String: %@", newString);
    
     NSString *newString = @"10";
     NSLog(@"New String: %@", newString);
     int number = [newString intValue];
     NSLog(@"Number: %d", number);
     */
}
- (int)sum:(int)number1 andNum:(int)number2 {
    int sum = number1 + number2;
    return sum;
}
@end
//int main() {
//    SimpleValue * simpleClass = [[SimpleValue alloc] init];
//    int getSum = [simpleClass sum:3 andNum:4];
//    NSLog(@"Sum: %d", getSum);
////    [simpleClass daclareSimple];
//}
