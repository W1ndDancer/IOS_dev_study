import Cocoa

// Написать функцию, которая на вход принимает число: сумма, которую пользовательхочет положить на вклад, следующий аргумент — это годовой процент, третий аргумент — это срок функция возвращает сколько денег получит пользователь по итогу.

/*
// В калькуляторе срок вводить в годах.
// Начисление процентов калькулятор считае раз в год

func compoundInterestCalc (money: Double, interest: Double, term: Double) -> Double {
    money*pow((1+interest/100), term)
}

print(String(format: "%.3f", compoundInterestCalc(money: 100, interest: 10, term: 10)))
*/

// Создать перечисление, которое содержит 3 вида пиццы, и создать переменные с каждым видом пиццы.

/*
enum pizza: String {
    case margherita = "Margherita"
    case hawaii = "Hawaii"
    case picante = "Picante"
}

let pizza1: pizza = .margherita
let pizza2 = pizza.hawaii
let pizza3 = pizza.picante

// Добавить возможность получения названия пиццы через rawValue.

func getName(pizza: pizza) -> String {
    pizza.rawValue
}

print(getName(pizza: pizza1))
print(getName(pizza: pizza2))
print(getName(pizza: pizza3))
*/
