//
//  classcoffee.swift
//  coffeeM
//
//  Created by Andrew Cheberyako on 16.07.2020.
//  Copyright © 2020 Andrew Cheberyako. All rights reserved.
//

import Foundation

class ClassСoffe {
    enum VariantCoffee {
        case Latte
        case Americano
        case Espresso
    }
    
    var coffee = 100
    var water = 1000
    var milk = 100
    
    func addCoffee(addCoffee: Int) {
        coffee += addCoffee
    }
    
    func addWanter(addWater: Int) {
        water += addWater
    }
    
    func addMilk(addMilk: Int) {
        milk += addMilk
    }
    
    func informationTable() -> String {
        """
        Воды \(water)
        Кофе \(coffee)
        Молоко \(milk)
        """
    }
    
    func makeCoffe(type: VariantCoffee) -> String {
        switch type {
        case .Latte:
            if coffee < 10  {
                return "Не хватает кофе"
            }
            if water < 100 {
                return "Не хватает воды"
            }
            if milk < 50 {
                return "Не хватает молока"
            } else {
                coffee -= 10
                water -= 100
                milk -= 50
            }
        case .Americano:
            if coffee < 20  {
                return "Не хватает кофе"
            }
            if water < 110 {
                return "Не хватает воды"
            } else {
                coffee -= 20
                water -= 110
            }
        case .Espresso:
            if coffee < 30  {
                return "Не хватает кофе"
            }
            if water < 60 {
                return "Не хватает воды"
            } else {
                coffee -= 30
                water -= 60
            }
        }
        return ("Ваш \(type) готов")
    }
}



