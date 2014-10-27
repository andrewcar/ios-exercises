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
    
    NSMutableString *numberString = [NSMutableString string];
    
    if (number > otherNumber) {
        NSInteger tempNumber = number;
        number = otherNumber;
        otherNumber = tempNumber;
    }
    
//    while (number <= otherNumber) {
    for (NSInteger i = number; i <= otherNumber; i++) {
        [numberString appendString:@(number).stringValue];
        number++;
    }
    return numberString;
}

@end
