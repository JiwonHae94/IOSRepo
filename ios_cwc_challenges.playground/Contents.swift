import Cocoa

// week 06 Challenge
/**
 * Challenge :
 * 4 ppl have dinner and want to split the bill
 * Calculate the total with tax and then how much each person owes.
 * Assign it to the vraible, 'split' and then print it out tot he console area
 * */
let people : Double = 4
let subtotal:Double = 128
let tax = 0.13
var split:Double = 0

split = (subtotal * (1 + tax)) / people
print("week 06 ans : ", split)


// Week 07 Challenge

func goodMorning(){
    print("Good Morning")
}

func printTotalWithTax(_ subtotal : Double) {
    print("subtotal : ", subtotal * 1.13)
}


func getTotalWithTax(_ subtotal : Double) -> Double{
    return subtotal * 1.13
}

func calculateTotalWithTax(_ subtotal : Double, _ tax : Double) -> Double{
    return subtotal * tax
}


goodMorning()

let num = 1.0
printTotalWithTax(num)
print(getTotalWithTax(num))
print(calculateTotalWithTax(num, 1 + tax))



