//
//  CarFactory.swift
//  CL
//
//  Created by able on 9/11/14.
//  Copyright (c) 2014 able. All rights reserved.
//

import Foundation

class CarFactory {
    var name = ""
    var color = ""
    var horsepower = 0
    var automaticOption = ""
    
    func setupCarDetailsWithName(nameOfCar: String, colorOfCar: String, horsepowerOfCar: Int, automaticOptionOfCar: Bool) {
        name = nameOfCar
        color = colorOfCar
        horsepower = horsepowerOfCar
        automaticOption = (automaticOptionOfCar ? "Automatic" : "Manual")
    }
    
    func desccription() {
        println("My \(name) was \(color) and had \(horsepower) horsepower and was an \(automaticOption)")
    }
}