//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSMutableString *numbers = [NSMutableString stringWithString:@""];
    NSString *numberAsString;
    NSInteger i;
    
    if (otherNumber >= number){\
        for (i = number; i <= otherNumber; i++){
            numberAsString = [NSString stringWithFormat:@"%ld", (long)i];
            [numbers appendString:numberAsString];
        }
    }
    else {
        for (i = otherNumber; i <= number; i++ ){
            numberAsString = [NSString stringWithFormat:@"%ld", (long)i];
            [numbers appendString:numberAsString];
        }
    }
    
    
    return numbers;
}

@end
