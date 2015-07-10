//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    return characterDictionary[@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSMutableArray *favoriteDrinks = [[NSMutableArray alloc] init];
    for (NSDictionary *characterDict in charactersArray){
        [favoriteDrinks addObject: characterDict[@"favorite drink"]];
    }
    return (NSArray *)favoriteDrinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary * mutCharacterDict = [characterDictionary mutableCopy];
    if (mutCharacterDict[@"quote"] == nil){
        mutCharacterDict[@"quote"] = @"New quote.";
    }
    return (NSDictionary *)mutCharacterDict;
}

@end
