//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
    NSString *sentence = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return sentence;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    NSString *newSentence;
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        NSRange range = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
        newSentence = [cheeseName stringByReplacingCharactersInRange:range withString:@""];
    } else {
        newSentence = cheeseName;
    }

    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */

    return newSentence;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    NSString *sentence;
    if (cheeseCount == 1) {
        sentence = [NSString stringWithFormat:@"1 cheese"];
    } else {
        sentence = [NSString stringWithFormat:@"%ld cheeses", (long)cheeseCount];    }
    
    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */
    
    return sentence;
}

@end
