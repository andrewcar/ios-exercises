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
    /* WORK HERE */
    
    /* Create a mutable string */
    NSMutableString *numberString = [NSMutableString string];
    
    /* Switch number and otherNumber if number is bigger */
    if (number > otherNumber) {
        NSInteger tempNumber = number;
        number = otherNumber;
        otherNumber = tempNumber;
    }
    
    /* Increment number and append to numberString while it is smaller than otherNumber */
    for (NSInteger i = number; i <= otherNumber; i++) {
        [numberString appendString:@(number).stringValue];
        number++;
    }
    return numberString;
}

@end
