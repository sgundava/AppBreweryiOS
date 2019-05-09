func fibonacciSequence(number: Int) -> Int{
    if (number <= 0){
        return 0
    }
    else if (number == 1){
        return 1
    }
    else{
        return fibonacciSequence(number: number - 1 ) + fibonacciSequence(number: number - 2)
    }
    
}

fibonacciSequence(number: 5)

func buyMilk(howManyMilkCartons : Int, howMuchMoneyRobotWasGiven: Int) -> Int{
    print ("go to the shops")
    print ("buy \(howManyMilkCartons) cartons of milk")
    
    let priceToPay = howManyMilkCartons * 2
    
    print ("pay £\(priceToPay)")
    print ("come Home")
    
    let change = howMuchMoneyRobotWasGiven - priceToPay
    return change
}
buyMilk(howManyMilkCartons: 12, howMuchMoneyRobotWasGiven: 50)


import UIKit

func loveCalculator(yourName: String, theirName : String) -> String{
    
    let loveScore = arc4random_uniform(101)
    
    if (loveScore > 80) {
        return "Your love score is \(loveScore). You love each other like Kanye loves Kanye."
    }
    else if (loveScore > 40) && (loveScore<80){
        return "Your love score is \(loveScore). You go together like coke and mentos."
    }
    else {
        return "Your love score is \(loveScore). No love possible, You'll be forever alone!"
    }
}

print(loveCalculator(yourName: "Angela", theirName: "Jack Bauer"))

func BMICalculator(weight: Double, height: Double) -> String{
    let BMI = (weight)/pow(height, 2)
    if BMI > 25 {
        return "Your BMI is \(BMI). You are overweight."
    }
    else if BMI > 18.25 && BMI <  25{
        return "Your BMI is \(BMI). You are normal weight"
    }
    else {
        return "Your BMI is \(BMI). You are under weight"
    }
}

print(BMICalculator(weight: 63, height: 1.8))
