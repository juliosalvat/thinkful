//
//  main.swift
//  unit2
//
//  Created by able on 9/22/14.
//  Copyright (c) 2014 able. All rights reserved.
//


import Foundation

var myFirstCar = CarFactory()
myFirstCar.setupCarDetailsWithName ("Mazda", colorOfCar: "Grey", horsepowerOfCar: 105, automaticOptionOfCar: true)

//This is my second car
var mySecondCar = CarFactory()
myFirstCar.setupCarDetailsWithName ("Nissan", colorOfCar: "Gunmetal", horsepowerOfCar: 350, automaticOptionOfCar: false)

