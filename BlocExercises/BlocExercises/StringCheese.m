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
    
    /* if cheeseName has "cheese" in it, remove */
    if ([cheeseName containsString:@"cheese"]) {
        NSString *fullCheeseString = cheeseName;
        NSRange cheeseRange = [fullCheeseString rangeOfString:@" cheese" options: NSCaseInsensitiveSearch];
        NSString *cheeseNameOnly = [fullCheeseString stringByReplacingCharactersInRange:cheeseRange withString:@""];
        return cheeseNameOnly;
        
    /* if cheeseName has "Cheese" in it, remove */
    } else if ([cheeseName containsString: @"Cheese"]) {
        NSString *fullCheeseString = cheeseName;
        NSRange cheeseRange = [fullCheeseString rangeOfString:@" cheese" options: NSCaseInsensitiveSearch];
        NSString *cheeseNameOnly = [fullCheeseString stringByReplacingCharactersInRange:cheeseRange withString:@""];
        return cheeseNameOnly;
        
    /* if cheeseName doesn't have either, then return cheeseName */
    } else {
        return cheeseName;
    }
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
