//
//  main.swift
//  CL
//
//  Created by able on 9/11/14.
//  Copyright (c) 2014 able. All rights reserved.
//

import Foundation

//var myFirstCar = CarFactory()
//
//    myFirstCar.name = "Mazda"
//    myFirstCar.color = "Metal"
//    myFirstCar.horsepower = 100
//    myFirstCar.automaticOption = "false"
//    
//    myFirstCar.desccription()
//    
//var mySecondCar = CarFactory()
//
//    mySecondCar.name = "Honda"
//    mySecondCar.color = "Black"
//    mySecondCar.horsepower = 105
//    mySecondCar.automaticOption = "true"
//
//    mySecondCar.desccription()

var myFirstCar = CarFactory()
myFirstCar.setupCarDetailsWithName ("Mustang", colorOfCar: "Red", horsepowerOfCar: 200, automaticOptionOfCar: true)

//This is my second car
var mySecondCar = CarFactory()
myFirstCar.setupCarDetailsWithName ("BMW", colorOfCar: "Blue", horsepowerOfCar: 300, automaticOptionOfCar: false)
    
