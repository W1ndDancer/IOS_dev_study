import Cocoa

// TASK 1


var ar0: [Int] = [5,6,-14,25]
var ar1: [Int] = ar0.sorted(by: <)
// print(ar1)

// TASK 2

var ar2: [Int] = ar0.map { $0 + 5 }
// print(ar2)

// TASK 3

var ar3: [Int] = ar0.filter {$0 >= 0 && $0 != 12}
ar3 = ar3.map { $0*3 }
// print(ar3)

// TASK 4

var dict1: [Int: String] = [ : ]
// print(dict1)

// TASK 5

var ar5: [Int] = [2,6,25,4,2,2,10,2]
var ar6: [Int] = ar5.filter { $0 != $1 }
