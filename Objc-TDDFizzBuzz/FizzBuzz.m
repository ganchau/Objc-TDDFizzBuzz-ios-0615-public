//
//  FizzBuzz.m
//  Objc-TDDFizzBuzz
//
//  Created by Al Tyus on 6/3/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import "FizzBuzz.h"

@implementation FizzBuzz

- (instancetype)init
{
    // call the designated init to set properties to 0
    return [self initWithStartNumber:@0 endNumber:@0];
}
- (instancetype)initWithStartNumber:(NSNumber *)startNumber endNumber:(NSNumber *)endNumber
{
    self = [super init];
    if (self) {
        self.startNumber = startNumber;    // set startNumber using given parameter
        self.endNumber = endNumber;        // set endNumber using given parameter
    }
    return self;
}

- (NSArray *)getValuesBetweenNumber:(NSNumber *)startNumber andNumber:(NSNumber *)endNumber
{
    NSMutableArray *fizzBuzzArray = [[NSMutableArray alloc] init];  //mutable array to store output of fizzBuzz
    int arrayIndex = 0;   //index used for the array
    
    for (NSInteger i=[startNumber integerValue]; i <= [endNumber integerValue]; i++) {
        NSString *content = @"";
        if (i == 0) {
            content = @"0";                     // if 0, use 0
        } else if (i % 3 == 0 && i % 5 == 0) {
            content = @"FizzBuzz";              // if multiples of 3 & 5, use "FizzBuzz"
        } else if (i % 3 == 0) {
            content = @"Fizz";                  // if multiple of only 3, use "Fizz"
        } else if (i % 5 == 0) {
            content = @"Buzz";                  // if multiple of only 5, use "Buzz"
        } else {
            content = [NSString stringWithFormat:@"%@", @(i)];    // else, use the current number
        }
        [fizzBuzzArray insertObject:content atIndex:arrayIndex];  // store content at current array index
        arrayIndex++;     // increment array index by 1
    }
    return [fizzBuzzArray copy];   // return NSArray copy of fizzBuzzArray (mutable array)
}

@end
