//
//  CarFactory.swift
//  clTest
//
//  Created by able on 9/22/14.
//  Copyright (c) 2014 able. All rights reserved.
//

import Foundation

class CarFactory {
    var name = ""
    var color = ""
    var horsepower = 0
    var automaticOption = ""
    
    func setupCarDetailsWithName(nameOfCar: String, colorOfCar: String, horsepowerOfCar: Int,automaticOptionOfCar: Bool) {
    self.name = nameOfCar
    self.color = colorOfCar
    self.horsepower = horsepowerOfCar
    self.automaticOption = (automaticOptionOfCar ? "Automatic" : "Manual")
        
        println("My \(name) is \(color) and has \(horsepower) horsepower and is a \(automaticOption)")
    }
    
//    func description() {
//        println("My \(name) is \(color) and has \(horsepower) horsepower and is \(automaticOption)")
//    }
}

