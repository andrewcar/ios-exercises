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
    
    /* plug in cheeseName */
    NSString *favoriteCheese = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    
    return favoriteCheese;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    /* WORK HERE */
    
//    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options: NSCaseInsensitiveSearch];
//    
//    if (cheeseRange.location == NSNotFound) {
//        return cheeseName;
//    } else {
//        NSString *cheeseNameOnly = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
//        return cheeseNameOnly;
//    }
    
    return [cheeseName stringByReplacingOccurrencesOfString:@" cheese" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, cheeseName.length)];
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        
        return @"1 cheese";
        
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        
        /* convert cheeseCount into a string */
        NSString *cheeseCountString = [NSString stringWithFormat:@"%li", cheeseCount];
        
        /* set up a string that you will replace a symbol to make cheeseString */
        NSString *multipleCheeses = @"# cheeses";
        
        /* make a range for the symbol */
        NSRange numberRange = [multipleCheeses rangeOfString:@"#"];
        
        /* make cheeseString with replacing characters in range */
        NSString *cheeseString = [multipleCheeses stringByReplacingCharactersInRange:numberRange withString:cheeseCountString];
        
        return cheeseString;
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
    return nil;
}

@end
