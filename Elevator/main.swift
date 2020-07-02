//
//  main.swift
//  Elevator
//
//  Created by Mark Kuharich on 7/1/20.
//  Copyright © 2020 Mark Kuharich. All rights reserved.
//

import Foundation

func funktion( _ A: [Int],  _ B : [Int], _ M : Int, _ X : Int, _ Y : Int)  -> Int {
    
    var totalStops = 0
    var indexOfFirstInLine = 0
    
    while indexOfFirstInLine < A.count {
        
        var capacityLeft = Y
        var peopleInLift = 0
        var floors = Set<Int>()
        
        while indexOfFirstInLine < A.count && A[indexOfFirstInLine] <= capacityLeft && peopleInLift < X {
            floors.insert(B[indexOfFirstInLine])
            peopleInLift += 1
            capacityLeft -= A[indexOfFirstInLine]
            indexOfFirstInLine += 1
        }
        
        totalStops += floors.count
        totalStops += 1 // go back down
    }
    
    return totalStops
}



// expecting 5:
var A = [60, 80, 40]
var B = [2, 3, 5]
var result = funktion(A, B, 5, 2, 200)
print("Expecting 5, got: \(result)")

//expecting 6:
A = [40, 40, 100, 80, 20]
B = [3, 3, 2, 2, 3]
result = funktion(A, B, 3, 5, 200)
print("Expecting 6, got: \(result)")

