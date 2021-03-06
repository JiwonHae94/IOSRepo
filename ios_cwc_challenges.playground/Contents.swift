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


print("\n\nweek 07 answers : ")
goodMorning()
let num = 5.0
printTotalWithTax(num)
print(getTotalWithTax(num))
print(calculateTotalWithTax(num, 1 + tax))


print("\n\nweek 08 answers : ")
struct Car{
    private var make, model, year, details: String
    
    init(
        _ make : String,
        _ model : String,
        _ year : String
    ){
        self.make = make
        self.model = model
        self.year = year
        self.details = "\(year) \(make) \(model)"
    }
    
    func getDetails() -> String{
        return details
    }
}

let camry = Car("Toyota", "Camry", "1999")
print(camry.getDetails())

print("\n\nweek 09 answers : ")
struct TaxCalculator{
    private var tax : Int
    
    init(_ tax : Int){
        self.tax = tax
    }
    
    func totalWithTax(_ n : Double) -> Double{
        return n * (Double(tax)/100.0 + 1)
    }
}

struct BillSplitter{
    private let taxCalculator:TaxCalculator
    
    init(_ tax : Int){
        self.taxCalculator = TaxCalculator(tax)
    }
    
    func splitBy(
        _ subtotal : Double,
        _ numPeople : Int
    ) -> Double {
        
        let temp = self.taxCalculator.totalWithTax(subtotal)
        
        print(temp, subtotal)
        
        return taxCalculator.totalWithTax(subtotal) / Double(numPeople)
    }
}

let billSplitter = BillSplitter(10)
let ans = billSplitter.splitBy(120, 5)
print(ans)
