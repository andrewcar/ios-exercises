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
    /* WORK HERE */
    int num = [number intValue];
    num = num * 2;
    number = [NSNumber numberWithInt:num];
    return number;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSArray *array = [[NSArray alloc] init];
    NSMutableArray *mutableArray = [array mutableCopy];
    while (number < otherNumber) {
        [mutableArray addObject:[NSNumber numberWithInteger:number]];
        number++;
    }
    [mutableArray addObject:[NSNumber numberWithInteger:number]];
    array = mutableArray;
    return array;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    NSMutableArray *mutableArray = [arrayOfNumbers mutableCopy];
    NSSortDescriptor *sorter = [[NSSortDescriptor alloc] initWithKey:nil ascending:NO];
    [mutableArray sortUsingDescriptors:@[sorter]];
    NSInteger lowestNumber = [[mutableArray lastObject] integerValue];
    return lowestNumber;
}

@end
