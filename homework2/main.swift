//
//  main.swift
//  homework2
//
//  Created by Nazar Kydyraliev on 21/10/22.
//

import Foundation

//Д/З №2 Система контроля версий GIT. Условные операторы if, else if, switch
//
//№1. Используя функции, условные операторы составить следующую программу прогноза погоды:
//
//При вводе одного из городов в readLine (Бишкек, Чолпон-Ата, Талас, Ош, Джалал-Абад, Нарын, Баткен) выводить в итоге данные о погоде на ближайшие 3 дня в указанном городе
//
print("Прогноз погоды\nВведите город:")

let weather = readLine()!
    let bishkek = "Бишкек"
    let cholpon = "ЧолпонАта"
    let talas = "Талас"
    let osh = "Ош"
    let djlal = "ДжалалАбад"
    let naryn = "Нарын"
    let batken = "Баткен"
func weatherKg(){
    if weather == bishkek{
        print("\n\(bishkek), погода на три дня:\n\nСегодня - облачно\nЗавтра - пасмурно\nПослезавтра - ясно")
    }else if weather == cholpon{
        print("\n\(cholpon), погода на три дня:\n\nСегодня - ясно\nЗавтра - переменная облачность\nПослезавтра - ясно")
    }else if weather == talas{
        print("\n\(talas), погода на три дня:\n\nСегодня - ясно\nЗавтра - ясно\nПослезавтра - ясно")
    }else if weather == osh{
        print("\n\(osh), погода на три дня:\n\nСегодня - переменная облачность\nЗавтра - ясно\nПослезавтра - облачно")
    }else if weather == djlal{
        print("\n\(djlal),погода на три дня:\n\nСегодня - облачно\nЗавтра - пасмурно\nПослезавтра - облачно")
    }else if weather == naryn{
        print("\n\(naryn), погода на три дня:\n\nСегодня - дождь\nЗавтра - дождь\nПослезавтра - облачно")
    }else if weather == batken{
        print("\n\(batken) погода на три дня:\n\nСегодня - ясно\nЗавтра - дождь\nПослезавтра - пасмурно")
    }else{
        print("Ошибка ввода города")
    }
}
weatherKg()


//№2. Используя условные операторы и функции создать программу, которая после ввода 5 наименований продуктов через readLine будет считать итоговую стоимость покупок (со скидкой в 5%)

let cola = ("cola")
let energy = ("energy")
let cigarette = ("cigarette")
let twix = ("twix")
let gum = ("gum")
func productPrice(){
print("\nУ нас есть только 5 товаров на твой вкус: \(cola), \(energy), \(cigarette), \(twix), \(gum)")
let colaPr = 100.00
    let energyPr = 88.00
    let cigarettePr = 112.00
    let twixPr = 44.00
    let gumPr = 23.00
    let summa = colaPr + energyPr + cigarettePr + twixPr + gumPr
    let skidka = summa * 0.05
    let summaWithSkidka = summa - skidka
print("Выберите 5 товаров:")
let oneProduct = readLine()!
print("Ещё 4")
let twoProduct = readLine()!
print("Ещё 3")
let threeProduct = readLine()!
print("Ещё 2")
let fourProduct = readLine()!
print("Ещё 1")
let fiveProduct = readLine()!
    if oneProduct == cola && twoProduct == energy && threeProduct == cigarette && fourProduct == twix && fiveProduct == gum{
        print("\nВаши товары:\n\n\(cola) - \(colaPr) som\n\(energy) - \(energyPr) som\n\(cigarette) - \(cigarettePr) som\n\(twix) - \(twixPr) som\n\(gum) - \(gumPr) som")
        print("\nСумма: \(summa) som\nСкидка: \(skidka) som\nСумма с учётом скидки: \(summaWithSkidka) som")
    }else{
        print("Попробуйте ещё раз")
    }
}
productPrice()

//

//В итоге должно быть так: (например)
//Ваши товары:
//Кола - 50с
//Кефир - 65с
//Молоко - 40с
//Хлеб - 20с
//Салат - 100с
//
//275с + скидка 13,75c
//Итого: 261,25с
//
//№3. Доработать калькулятор с прошлого урока с помощью условных операторов и соединить всё с readLine (например сначала спрашиваете число, после чего “Какое действие совершить?”, затем второе число и т.д ) (максимум доступно 5 действий). И в итоге выдать итоговый результат используя заранее подготовленные функции для вычислений

print("\nКалькулятор")
func calculator(){
print("Введите цифру")
let numcalone: String = readLine()!
print("Введите действие (+ - * /)")
var sumcal: String = readLine()!
print("Введите вторую цифру")
let numcaltwo: String = readLine()!
var summa = "+"
var minus = "-"
var umnoj = "*"
var delit = "/"
if sumcal == summa {
    print("\(numcalone) \(sumcal) \(numcaltwo) =",(Int(numcalone) ?? 0) + (Int(numcaltwo) ?? 0))
}
if sumcal == minus {
    print("\(numcalone) \(sumcal) \(numcaltwo) =",(Int(numcalone) ?? 0) - (Int(numcaltwo) ?? 0))
    
}
if sumcal == umnoj {
    print("\(numcalone) \(sumcal) \(numcaltwo) =",(Int(numcalone) ?? 0) * (Int(numcaltwo) ?? 0))
}
if sumcal == delit {
    print("\(numcalone) \(sumcal) \(numcaltwo) =",(Int(numcalone) ?? 0) / (Int(numcaltwo) ?? 0))
}
}
calculator()
