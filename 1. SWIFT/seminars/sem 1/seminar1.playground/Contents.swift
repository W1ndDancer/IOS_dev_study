import Cocoa

/*TASK 1*/
/*
var a2: Int = 1
var b2: Float = 2
var c2: String = "String"
var d2: Bool = true
var e2: Character = "e"

let a1: Int = 1
let b1: Float = 2
let c1: String = "String"
let d1: Bool = true
let e1: Character = "e"
*/

/*TASK2*/

// let a: Int = 17
// var b: Int = 2
/*
if a >= 7 {
    b+=7
} else {
    b-=7
}
*/

/*TASK3*/
/*
 if (a+b >= 15) && (b >= 7) {
 b*=2
 } else {
 b*=3
 }
 */

/*TASk4*/

/*
 switch a {
 case 0...7: print(a+b)
 case  8...20: print(a-b)
 case 21...50: print(a*b)
 default: print("ahoj")
 }
 */

/*TASK5*/

/*
if a > 10 && b < 20 {
b-=10
} else if (a - b) < 20 {
print(b)
} else {
b += 7
}
*/

/*TASK 6*/

/*
 if (a + b) > 20 || (a-b)<7 {
 print(a)
 } else {
 print(b)
 }
 */

/*TASK 7*/

/*
 if ((a > 15) || (b < 7) && (a + b) != 17) {
     print(a)
 } else {
     print(b)
 }
 */

// TASK 8

/*
var c: Int = 1
while c < 100 {
print(c)
c+=2
}
*/

/*
for num in 0...100 where num % 2 != 0 {
    print(num)
}
*/

// TASK 9.1

var a: Int = 8
var b = 44

/*
while a != 50 {
    a+=1
}
print(b/2)
*/

//TASK 10.2

/*
for num in 3...5 {
    b+=num
    print(b)
}
*/

// TASK 11.3

/*
for num in 1...10 {
    if a + num > b {
        b+=30
        print(b)
    } else {
        b-=10
        print(b)
    }
}
*/

// TASK 12.4

var k = 5
/*
for num in 20..<30 {
    if num > 25 {
        k-=4
    } else {
        k+=10
    }
}
print(k)
*/

// TASK 12.5

/*
for _ in 20..<30 {
    if k > 20 {
        k-=10
    } else {
        k+=1
    }
}
print(k)
*/

//TASK 12.6

while k != 40 {
    b-=3
    a+=10
    k+=5
    switch a {
    case 10...30: print(a+b)
    case 31...50: print(a-b)
    case 51...100:print(a*b)
    default: continue
    }
}
