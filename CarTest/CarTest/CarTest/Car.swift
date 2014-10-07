//
//  Car.swift
//  CarTest
//
//  Created by able on 9/24/14.
//  Copyright (c) 2014 able. All rights reserved.
//

import Foundation

//class CarFactory {
//    var name = ""
//    var color = ""
//    var horsepower = 0
//    var automaticOption = ""
//    
//    func setupCarDetailsWithName(nameOfCar: String, colorOfCar: String, horsepowerOfCar: Int,automaticOptionOfCar: Bool) {
//        self.name = nameOfCar
//        self.color = colorOfCar
//        self.horsepower = horsepowerOfCar
//        self.automaticOption = (automaticOptionOfCar ? "Automatic" : "Manual")
//        
//        println("My \(name) is \(color) and has \(horsepower) horsepower and is a \(automaticOption)")
//    }
//    
//}

class Car {
    
    var name = ""
    var color = ""
    var horsepower = 0
    var automaticOption = ""
    
    
    init(nameOfCar: String, colorOfCar: String, horsepowerOfCar: Int, automaticOptionOfCar: Bool) {
        
        name = nameOfCar
        color = colorOfCar
        horsepower = horsepowerOfCar
        automaticOption = (automaticOptionOfCar ? "Automatic" : "Manual")
        
        println("My \(name) is \(color) and has \(horsepower) horsepower and is \(automaticOption)")
    }
}
