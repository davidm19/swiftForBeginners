//: Playground - noun: a place where people can play

import Cocoa

/* BASICS OF SWIFT VARIABLE DECLARATION
 */

//VARIABLE DECLARATION; YOU CAN REASSIGN VALUES TO THIS VARIABLE
var str = "Hello, playground"

//CONSTANT DECLARATION; THIS VALUE STAYS THE SAME THROUGHOUT THE ENTIRE PROJECT
let stringLiteral = "String literal"

var emptyString = ""

let stringWithPotential = String()

//MORE SPECIFIC WAY OF DELCARING VARIABLES, REMEMBER TO KEEP THE DATA TYPE CAPITALIZED AND SPELLED CORRECTLY
let number: Int = 5

/* LIST OF DATA TYPES
 
 INT
 FLOAT
 DOUBLE (USE THIS OVER FLOAT)
 BOOL
 STRING
 CHAR
 
 */

for character in stringLiteral {
    print("\(character)") //THAT'S HOW YOU INPUT A VARIABLE INTO A PRINT STATEMENT
}
print("\n")

/* WHAT'S A STRING MADE OUT OF?
 */

//.CHARACTERS PROPERTY
let whatsGoingOn = "My friend is sitting next to me."
print(whatsGoingOn.count)

//.UNICDODESCALARS PROPERTY
var emoji = "🤖" //TO ACCESS EMOJI, PRESS CONTROL+COMMAND+SPACE

/* INTRO TO STRING INTERPOLATION (INSERTING VARIABLES INTO STRING LITERALS)
 */

// Good
var birthdayCheer = "Happy Birthday!"
print(birthdayCheer)

// Great!
var name = "Kate"
var customizedBirthdayCheer = "Happy Birthday, \(name)!"
print(customizedBirthdayCheer)

/* BASIC EXAMPLE OF STRING INTERPOLATION
 */

var securityDeposit: Int = 900
var montlyPayment: Int = 500
var leaseExcerpt = "$\(montlyPayment * 2 + securityDeposit) is due on the move-in date."

/* STRING MANIPULATION
 */
//CONCATENATION
let theTruth = "Money can't buy me love"
let anotherTruth = "but it can buy me a Bentley"
print(theTruth + ", " + anotherTruth + "\n")

//FINDING A STRING WITHIN A STRING
let fortunate = "fortunate"
fortunate.contains("tuna") //CONTAINS IS BOOL TYPE

//REPLACING THINGS IN STRINGS (BASIC FIND AND REPLACE)
var password = "Sally sells sea shells by the sea shore \n"
password = password.replacingOccurrences(of: "s", with: "$")
print(password)


/* CONTROL FLOW, BOOLEANS, AND IF-STATEMENTS
 */

//THE == OPERATOR
var description = "the better looking Parkes brother"
var jimmy = description

jimmy == "the better looking Parkes brother" //TRUE STATEMENT

//THE && AND || OPERATORS
var hungry = false
var isPie = true
var shouldEat = hungry || isPie //EVALUATES TO TRUE

//THE ! OPERATOR (NOT WOW)
var finishedHomework = false
var schoolTomorrow = true
var notAllowedToPlayVideoGames = !finishedHomework && schoolTomorrow

//APPLICATION (if true, then a function works)
//ex1
func goEat() {
    print("nom nom \n")
}

var iAmHungry = true

if iAmHungry {
    goEat()
}

//ex2
var wantFood = true
var haveMoney = true
if wantFood && haveMoney {
    print("yay \n")
}

// THE IF-STATEMENT: A FUNDAMENTAL TOOL IN CONTROL FLOW

let condition = true

func codeToExecute() { //ANY BOOLEAN EXPRESSION EVALUATING TO TRUE OR FALSE
    print("executed \n")
}

if condition {
    codeToExecute()
}

/* FUNCTIONS
 */

//DEFINING THE "SAYHELLO" FUNCTION

func sayHello() {
    print("Hello! \n")
}

//CALLING THE "SAYHELLO" FUNCTION
sayHello()

//PARAMETERS
let jeremy  = "Jeremy"

func sayHelloToStudent(student: String) { //THIS IS A PARAMETER, WHICH REFERS TO ANY INPUT VALUE IN THE FUNCTION
    print("Hello, \(student)!")
}

//ARGUMENTS
sayHelloToStudent(student: jeremy) //THIS IS AN ARGUMENT, WHICH REFERS TO THE SPECIFIC INPUT VALUES PUT INTO THE FUNCTION

//MULTIPLE PARAMETERS
func greetTheStudent(student: String, isLate: Bool) {
    if isLate {
        print("You're late, \(student). Get the fuck outta here. \n")
    } else {
        print("Glad you're here, \(student) \n")
    }
}

greetTheStudent(student: "Jamie", isLate: true)
greetTheStudent(student: "Steven", isLate: false)
greetTheStudent(student: "Ricky", isLate: true)

//DEFAULT PARAMETERS
func calculatePriceForMealWithTip(priceOfMeal: Double, tipPercentage: Double = 0.15) -> Double {
    return priceOfMeal + (priceOfMeal * tipPercentage)
}

// This call uses the default tip of 15% (0.15)
calculatePriceForMealWithTip(priceOfMeal: 43.27)
calculatePriceForMealWithTip(priceOfMeal: 100.32, tipPercentage: 0.20)
calculatePriceForMealWithTip(priceOfMeal: 65.43)
calculatePriceForMealWithTip(priceOfMeal: 22.18)

//REMEMBER! PARAMETERS DEFINED INSIDE THE FUNCTION CANNOT BE USED OUTSIDE

//RETURNING THINGS
func averageScore(score1: Double, score2: Double, score3: Double) -> Double { //RETURNING FUNCTIONS MUST ALWAYS BE SPECIFIED WITH A TYPE
    let totalScore = score1 + score2 + score3
    return(totalScore / 3)
}

print(averageScore(score1: 24.15, score2: 975.1298, score3: 1236.134))

//ACCESSING A RETUN VALUE
let avgScore = averageScore(score1: 24.15, score2: 975.1298, score3: 1236.134)
