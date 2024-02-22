import UIKit


//MARK: - 1
//Создайте по 2 enum с разным типом RawValue
enum Weekday: Int {
    case monday = 1
    case tuesday
    case wensday
    case thursday
    case friday
}

enum Weekend: String {
    case saturday
    case sunday
}


//MARK: - 2
//Создайте несколько enum для заполнения полей стркутуры - анкета сотрудника: enum пол, enum категория возраста, enum стаж
struct EmployeeProfile {
    
    let genderEmployee: GenderEmployee
    let ageСategory: AgeСategoryEmployee
    let experience: experienceEmployee
    
}

enum GenderEmployee {
    case male, female
}
enum AgeСategoryEmployee {
    case yang, adult, old
}
enum experienceEmployee {
    case lot, average, little
}

let employ = EmployeeProfile(genderEmployee: .male, ageСategory: .yang, experience: .little)


//MARK: - 3
//Создать enum со всеми цветами радуги

enum ColorRainbow {
    case red, orange, yellow, green, blue, indigo, violet
}


//MARK: - 4
//Создать функцию, которая содержит массив разных case'ов enum и выводит содержимое в консоль. Пример результата в консоли 'apple green', 'sun red' и т.д.

enum Color {
    case red, orange, yellow, green, blue, indigo, violet
}
enum Fruits {
    case orange, lemon, peach, banana, apple, tangerine, pineapple
}

func printFruitsColor() {
    let fruits = [Fruits.apple, Fruits.banana, Fruits.lemon, Fruits.orange,
                  Fruits.peach, Fruits.pineapple, Fruits.tangerine].shuffled()
    
    let colors = [Color.blue, Color.green, Color.indigo, Color.orange, Color.red,
                 Color.violet, Color.yellow].shuffled()
    
    
    for (fruit, color) in zip(fruits, colors) {
        print("\(fruit), \(color) ")
    }
    
}

printFruitsColor()



//MARK: - 5
//Создать функцию, которая выставляет оценки ученикам в школе, на входе принимает значение enum Score: String {<Допишите case'ы} и выводит числовое значение оценки

enum Score: String {
    case one, two, free, four, five
}

func chooseScore (for score: Score) {
    switch score {
        
    case .one:
        print(1)
    case .two:
        print(2)
    case .free:
        print(3)
    case .four:
        print(4)
    case .five:
        print(5)
    }
}

chooseScore(for: .five)


//MARK: - 6
// Создать метод, который выводит в консоль какие автомобили стоят в гараже, используйте enum

enum Сars: String, CaseIterable {
    case bmw
    case bugatti
    case lada
}

func returnCar() {
    for car in Сars.allCases {
        print(car)
    }
}

returnCar()
