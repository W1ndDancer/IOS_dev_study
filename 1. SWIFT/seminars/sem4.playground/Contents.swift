import Cocoa

// Написать функцию которая решает корни квадратного уравнения

/*
func FindRoots (a: Double, b: Double, c: Double) -> (Double?, Double?) {
    let d = b*b - 4*a*c
    if d > 0 {
        return ((-b + sqrt(d)/2*a), (-b - sqrt(d)/2*a))
    } else if d == 0 {
        return (-b/2*a, -b/2*a)
    } else {
        return (nil, nil)
    }
}

*/

// Создать перечесление с видами чая (black, green, fruit), далее создать структуру, в которой будет  хранится вид чая и его стоимость

// Добать в структуру с чаем getCost, которая будет возвращать стоимость чая. На вход ф-ция принимает процент скидки(целое), который необходимо применить к стоимости. если скидка больше 50% напечатать в консоль о невозможности применить скидку и вернуть изначальную стоимость чая

enum TeaType: String {
    case black
    case green
    case fruit
}

struct TeaConstructor {
    var name: TeaType
    var cost: Double
    
    func GetDiscount(discount: Int) -> Double {
        guard discount > 0 && discount <= 50 else {
            print("Cant use a discount")
            return cost
        }
        return cost*Double(discount)/100
    }
}

// Создать класс Cafe, в котором хранится массив с чаем. Переменная должна быть приватной. Значение и массив должны устанавливаться в инициализаторе.

//Добавть в класс ф-цию, которая принимает тип чая и скидку которую нужно приминить. Ф-ция должна вернуть стоимость чая, которую должен заплатить покупатель. Если данного вида чая нет в массиве(меню) - вернуть nil

class Cafe {
    private var tea: [TeaConstructor]
    
    init(tea: [TeaConstructor]) {
        self.tea = tea
    }
    /*
     func GetSale(type: TeaType, sale: Int) -> Double? {
         guard tea.first?.name == type else {
             return nil
         }
         return tea.first?.GetDiscount(discount: sale)
     }
     */

}
