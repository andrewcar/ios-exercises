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
    NSArray *array = [NSArray new];
    NSMutableArray *mutableArray = [array mutableCopy];
    if (number < otherNumber) {
        while (number < otherNumber) {
            [mutableArray addObject:[NSNumber numberWithInteger:number]];
            number++;
        }
        [mutableArray addObject:[NSNumber numberWithInteger:otherNumber]];
        array = mutableArray;
    } else if (number > otherNumber) {
        while (number > otherNumber) {
            [mutableArray addObject:[NSNumber numberWithInteger:number]];
            number--;
        }
        [mutableArray addObject:[NSNumber numberWithInteger:otherNumber]];
        array = mutableArray;
    } else if (number == otherNumber) {
        array = @[@(number)];
    }
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
