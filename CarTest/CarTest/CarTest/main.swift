//
//  main.swift
//  CarTest
//
//  Created by able on 9/24/14.
//  Copyright (c) 2014 able. All rights reserved.
//

import Foundation

//// CarFactory
//var myFirstCar = CarFactory()
//myFirstCar.setupCarDetailsWithName("Mazda", colorOfCar: "Grey", horsepowerOfCar: 200, automaticOptionOfCar: true)
//
//var mySecondCar = CarFactory()
//mySecondCar.setupCarDetailsWithName("Civic SI Turbo", colorOfCar: "Black", horsepowerOfCar: 225, automaticOptionOfCar: false)
//
//var myThirdCar = CarFactory()
//myThirdCar.setupCarDetailsWithName("Z33 Nissan 350Z", colorOfCar: "Gunmetal", horsepowerOfCar: 350, automaticOptionOfCar: false)

//This is the first category of cars
var myRegularCar = Car(nameOfCar :"Regular car", colorOfCar: "Red", horsepowerOfCar: 200, automaticOptionOfCar: true)

//This is second category of cars: a Turbo car
var myTurboCar = TurboCar(nameOfCar: "Turbo Car", colorOfCar: "Blue", horsepowerOfCar: 300, automaticOptionOfCar: true)


println(myTurboCar.turboCarSpecs("B", aSpoiler: true))

//This is the third category of cars: a Hybrid Car
var myHybridCar = HybridCar(nameOfCar: "Hybrid Car", colorOfCar: "Yellow", horsepowerOfCar: 100, automaticOptionOfCar: true)

//This is the fourth category of cars: a Pickup Truck
var myPickupTruck = PickupTruck(nameOfCar: "Pickup Truck", colorOfCar: "black", horsepowerOfCar: 500, automaticOptionOfCar: true)
myPickupTruck.cargoBedWidth = 50
myPickupTruck.cargoBedLength = 60

println()
println("The total cargo area for the pickupTruck is \(myPickupTruck.totalCargoArea)")



