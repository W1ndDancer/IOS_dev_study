import Cocoa

// Создать структуру работника пиццерии. В ней должны быть такие свойства, как имя, зарплата и должность. Должностей пока может быть две: или кассир, или повар. Добавить в класс пиццерии массив с работниками.

//Добавить в класс пиццерии свойство, в котором хранится массив столиков. У класса столика добавить свойство, в котором хранится кафе, в котором стоит столик. Столики создаются сразу в инициализаторе, не передаются туда в качестве параметра.

// Создать класс столика, в нём должно быть свойство, в котором содержится количество мест и функция, которая на вход принимает количество гостей, которое хотят посадить, а возвращает true, если места хватает и false, если места не хватает. Изначальное количество мест задаётся в инициализаторе.

class Table {
    var quantity: Int
    weak var myPizzeria: Pizzeria?
    
    init(){
    self.quantity = 20
    }
    
    func isThereFreeTable(guestAmount: Int) -> Bool {
        guard guestAmount > 0 && guestAmount <= self.quantity else {
            return false
        }
        return true
    }
}

// Вставка из дз 5

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

// Конец вставки

enum PosList: String {
    case cashier
    case cook
}

protocol WorkerProtocol {
    var name: String {get}
    var salary: Double {get}
    var position: PosList {get}
}

struct Worker: WorkerProtocol {
    var name: String
    var salary: Double
    var position: PosList
}

class Pizzeria {
    private var food: [PizzeriaProtocol]
    private var workers:[WorkerProtocol]
    var tables: Table
    
    init(food: [PizzeriaProtocol], workers: [WorkerProtocol], tables: Table) {
        self.food = food
        self.workers = workers
        self.tables = tables
    }
    
    func addFood(food: PizzeriaProtocol) {
        self.food.append(food)
    }

    func addWorker(workers:WorkerProtocol) {
        self.workers.append(workers)
    }
    
    func getMenu() -> [PizzeriaProtocol] {
        food
    }
}


