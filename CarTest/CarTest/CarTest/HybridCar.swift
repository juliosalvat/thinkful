//
//  HybridCar.swift
//  CarTest
//
//  Created by able on 9/24/14.
//  Copyright (c) 2014 able. All rights reserved.
//

import Foundation

class HybridCar: Car {
    
    var electricHorsepower: Float = 0.0
    
    override var name : String {
        get{
            super.name = "Hybrid"
            return super.name + "Tech"
        }
        
        set
        {
            //Nothing here for now.
        }
    }
    
    override init(nameOfCar: String, colorOfCar: String, horsepowerOfCar: Int, automaticOptionOfCar: Bool){
        
        super.init(nameOfCar: nameOfCar, colorOfCar: colorOfCar, horsepowerOfCar: horsepowerOfCar, automaticOptionOfCar: automaticOptionOfCar)

        self.automaticOption = (automaticOptionOfCar ? "Automatic" : "Manual")
        
        electricHorsepower = 0.9 * Float(horsepowerOfCar)
        

        println("My \(self.name) is \(self.color) and has \(self.electricHorsepower) Electric horsepower (bhp) and is \(self.automaticOption)")
    }
}