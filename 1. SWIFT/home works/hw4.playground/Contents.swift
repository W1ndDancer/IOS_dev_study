import Cocoa

// Создать перечисление с видами пиццы (хотя бы 4-5 кейсов).

// Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы. Подсказка: добавки лучше также сделать перечислением.

struct PizzaConstructor {
    
    enum PizzaType: String {
        case margherita = "Margherita"
        case hawaii = "Hawaii"
        case picante = "Picante"
        case diablo = "Diablo"
        case peperoni = "Peperoni"
    }
    
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
    var name: PizzaType = .margherita
    var doughType: Dough = .thin
    var pizzaToppings: [Toppings] = []
}

// Создать класс пиццерии, добавить массив с возможными видами пиццы. Переменная с массивом должна быть приватной. Массив задаётся в инициализаторе.

// Написать в классе пиццерии функции для добавления нового вида пиццы и для получения всех доступных пицц.

class Pizzeria {
    private var pizza: [PizzaConstructor]
    
    init(pizza: [PizzaConstructor]) {
        self.pizza = pizza
    }
    
    func addPizza(pizza: PizzaConstructor) {
        self.pizza.append(pizza)
    }
    
    func getPizzaList() -> [PizzaConstructor] {
        pizza
    }
}

// Создать экземпляр класса пиццерии и добавить в него несколько видов пицц.

let defaultPizza = [PizzaConstructor(), PizzaConstructor(name: .hawaii, doughType: .thin, pizzaToppings: []), PizzaConstructor(name: .peperoni, doughType: .thin, pizzaToppings: [])]
let newVeryVeryBestPizzeria = Pizzeria(pizza: defaultPizza)

newVeryVeryBestPizzeria.addPizza(pizza: PizzaConstructor(cost: 209, name: .hawaii, doughType: .thin, pizzaToppings: []))
newVeryVeryBestPizzeria.addPizza(pizza: PizzaConstructor(cost: 229, name: .hawaii, doughType: .thick, pizzaToppings: []))
newVeryVeryBestPizzeria.addPizza(pizza: PizzaConstructor(cost: 249, name: .diablo, doughType: .thin, pizzaToppings: [.mushrooms, .peperoni]))

print(newVeryVeryBestPizzeria.getPizzaList())
