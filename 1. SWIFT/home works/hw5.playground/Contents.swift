import Cocoa

// В рамках прошлого домашнего задания был создан класс пиццерии с переменной, в которой хранится пицца, удалите её. Необходимо создать структуру картошки фри, в которой будет стоимость и размер картошки и сделать так, чтобы в классе пиццерии была одна переменная, в которую можно было бы класть и пиццу, и картошку фри.

// Добавьте в класс пиццерии функцию, которая будет добавлять новую позицию в меню.

protocol PizzeriaProtocol {
    var name: String {get}
    var cost: Double {get}
}

struct PizzaConstructor: PizzeriaProtocol {
    
    enum Dough: String {
        case thick
        case thin
    }
    
    enum Toppings: String {
        case peperoni
        case cheese
        case tomatos
        case mushrooms
        case oregano

    }
    
    var cost: Double = 189
    var name: String = "Margherita"
    var doughType: Dough = .thin
    var pizzaToppings: [Toppings] = []
}

struct PotatoFri: PizzeriaProtocol {
    var cost: Double
    var name: String = "Potato"
    var size: PotatoSize = .m
    
    enum PotatoSize: String {
        case s
        case m
        case l
        case xl
    }
}

class Pizzeria {
    private var food: [PizzeriaProtocol]
    
    init(food: [PizzeriaProtocol]) {
        self.food = food
    }
    
    func addFood(food: PizzeriaProtocol) {
        self.food.append(food)
    }
    
    func getMenu() -> [PizzeriaProtocol] {
        food
    }
}

// Создайте протокол, в котором будут содержаться функции открытия и закрытия.

protocol OpenCloseProtocol {
    func open()
    func close()
}

// Написать расширение для класса пиццерии, в котором будет реализован протокол из пункта 3.

extension Pizzeria: OpenCloseProtocol {
    func open() {
        print("Pizzeria is open")
    }
    func close() {
        print("Pizzeria is closed")
    }
}

// Написать функцию, в которой происходит вычитание одного числа из другого. Функция должна работать и с Int, и с Double.Функция должна возвращать результат вычитания.

func diff<T: Numeric>(a: T, b: T) -> T
{
    a-b
}

// Проверка


let defaultPizza = [PizzaConstructor(name: "Hawai", doughType: .thin, pizzaToppings: []), PizzaConstructor(name: "Peperoni", doughType: .thin, pizzaToppings: [])]
let newVeryVeryBestPizzeria = Pizzeria(food: defaultPizza)

newVeryVeryBestPizzeria.addFood(food: PizzaConstructor(cost: 209, name: "Hawai", doughType: .thin, pizzaToppings: []))
newVeryVeryBestPizzeria.addFood(food: PotatoFri(cost: 150, size: .l))

// print(newVeryVeryBestPizzeria.getMenu())
// newVeryVeryBestPizzeria.open()
// newVeryVeryBestPizzeria.close()

print(diff(a: 5, b: 4.5))

