//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    
    return [characterString componentsSeparatedByString:@";"];
    
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    return [characterArray componentsJoinedByString:@";"];
    
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSMutableArray *mutableCharacterArray = [characterArray mutableCopy];
    NSSortDescriptor *sortAlphabetically = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector: @selector(localizedCaseInsensitiveCompare:)];
    [mutableCharacterArray sortUsingDescriptors:@[sortAlphabetically]];
    return (NSArray *) mutableCharacterArray;
    
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    
    NSPredicate *isWharfThere = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    NSArray *wharfArray = [characterArray filteredArrayUsingPredicate:isWharfThere];
    if (wharfArray.count > 0){
        return YES;
    }
    return NO;
}

@end
