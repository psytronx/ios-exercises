//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    NSInteger intNumber = [number integerValue];
    NSNumber *result = [NSNumber numberWithInteger: intNumber * 2];
    return result;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSInteger counter = number;
    NSMutableArray *arrayOfNumbers = [[NSMutableArray alloc] init];
    while (counter <= otherNumber){
        [arrayOfNumbers addObject: [NSNumber numberWithInteger:counter]];
        counter++;
    }
    return arrayOfNumbers;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    
    NSNumber *lowestNumber = arrayOfNumbers[0];
    for (NSNumber *number in arrayOfNumbers){
        if ([number integerValue] < [lowestNumber integerValue]){
            lowestNumber = number;
        }
    }
    
    return [lowestNumber integerValue];
}

@end
