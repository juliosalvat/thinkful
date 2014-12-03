for count in 1...10 {
    var remainder = (count % 2)
    if remainder == 1{
       println("The count is \(count)")
    }
}

func convert(x:Int) -> Float {
   var fx = Float(x)
   return fx
}

var y:Int = 2

convert(y)


func LanguageConvert(var change: Int) {
    switch change {
        case 1:
        println("One")
        
    case 2:
        println("Two")
        
    case 3:
        println("Three")
        
    default:
        println("one through ten")
    }
    
}

LanguageConvert(3)

class CarFactory {
    var color = ""
    var horsepower = 0
    var automaticOption = false
}


var myCar = CarFactory()

myCar.color = "Red"
myCar.horsepower = 200
myCar.automaticOption = true

println("myCar has \(myCar.horsepower) horsepower")
















