import UIKit

// Написать функцию, которая на вход принимает число типа Int, а возвращает, является ли число четным

/*
var a: Int = 2

func isEven(number: Int) -> Bool {
    number % 2 == 0
}

print(isEven(number: a))
*/

// Написать функцию, которая на вход принимает 3 числа: a, b, c и возвращает результат вычисления b^2 - 4 * a * c

/*
func discriminant(a: Double, b: Double, c: Double) -> Double {
    b*b - 4*a*c
}

print(discriminant(a: 2, b: 3, c: 1))
*/
 
// Написать функцию, которая рассчитает площадь прямоугольника. На вход два параметра: длина и ширина, на выход: площадь

/*
func square(width: Double, height: Double) -> Double {
    width*height
}

print(square(width: 4, height: 3))
*/

// Напишите функции, которая на вход принимает целое положительное число, а возвращает сумму всех чисел от 1 до переданного числа

/*
var a: Int = 4

func summ_to_a(number: Int) -> Int {
    var summ = 0
    if number <= 0 {
        print("number must be greater then 0")
        return -1
    } else {
        for num in 1...number {
            summ+=num
        }
    }
    return summ
}

print(summ_to_a(number: a))
*/

// Создать опционал с типом Int и создать еще одну переменную, которая содержит значение первой переменной, но не является опционалом.  Сделать это необходимо 2 способами: при помощи force unwrapping,  nil coalescing

/*
var o: Int? = nil
print(type(of: o))
//var b = o!
//print(type(of: b))
var c = o ?? 5
print(c)
*/

// Создать перечисление, которое имеет в виде кейсов два вида чая: зеленый и черный
// Задать для кейсов названия “Black tea” и “Green tea”


enum tea: String {
    case green = "Green tea"
    case black = "Black tea"
}

// Написать внутри перечисления функцию, которая будет возвращать цвет чая в строковом формате, то есть, если это blackTea, то black, а если greenTea, то green

func getTeaColor (tea: tea) -> String {
    switch tea {
    case .green: return "Green"
    case .black: return "Black"
    }
}

// print(getTeaColor(tea: tea.green))
// print(getTeaColor(tea: .black))

// Создать переменную с типом созданного перечисления, а затем при помощи print вывести цвет чая

let someTea = tea.green
var someSomeTea = tea.black

// print(getTeaColor(tea: someTea))
// print(getTeaColor(tea: someSomeTea))

//Написать функцию, которая на вход принимает параметр типа Tea, но который является опционалом. Функция должна печатать название чая, если значение есть и “Данный вид чая не найден”, если значение nil. Написать функцию нужно в 2 вариантах: используя guard let, используя if let

func getNameIf (tea: tea?) -> String {
    if let tea {
        switch tea {
        case .green: return "Green"
        case .black: return "Black"
        }
    }
    return "This type of tea not found"
}

// print(getNameIf(tea: nil))

func getNameGuard (tea: tea?) -> String {
    guard let tea = tea else {
        return "This type of tea not found"
    }
    switch tea {
    case .green: return "Green"
    case .black: return "Black"
    }
}

print(getNameGuard(tea: nil))
