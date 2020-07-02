//
//  main.m
//  ElevatorObjC
//
//  Created by Mark Kuharich on 12/16/16.
//  Copyright © 2016 Mark Kuharich. All rights reserved.
//

#import <Foundation/Foundation.h>
- (int) solution(NSMutableArray *A, NSMutableArray *B, int M, int X, int Y) {
    int totalStops = 0;
    int indexOfFirstInLine = 0;
    
    while (indexOfFirstInLine < A.count) {
        
        int capacityLeft = Y;
        int peopleInLift = 0;
        NSMutableArray *floors = [NSMutableArray array];
        
        while (indexOfFirstInLine < A.count && [[A objectAtIndex:indexOfFirstInLine] integerValue] <= capacityLeft && peopleInLift < X) {
            [floors addObject:[NSNumber numberWithInteger:[[B objectAtIndex:indexOfFirstInLine] integerValue]]];
            peopleInLift += 1;
            capacityLeft -= [[A objectAtIndex:indexOfFirstInLine] integerValue];
            indexOfFirstInLine += 1;
        }
        
        totalStops += floors.count;
        totalStops += 1; // go back down
    }

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int result = solution([60, 80, 40], [2, 3, 5], 5, 2, 200);
    }
    return 0;
}

int
    
    return totalStops;
}
