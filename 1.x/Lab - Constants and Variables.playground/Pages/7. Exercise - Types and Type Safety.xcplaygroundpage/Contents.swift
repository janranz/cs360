/*:
 ## Exercise - Types and Type Safety
 
 Declare two variables, one called `firstDecimal` and one called `secondDecimal`. Both should have decimal values. Look at both of their types by holding Option and clicking on the variable name.
 */
var firstDecimal = 10.5
var secondDecimal = 10.8
/*:
 Declare a variable called `trueOrFalse` and give it a boolean value. Try to assign it to `firstDecimal` like so: `firstDecimal = trueOrFalse`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
 */
var trueOrFalse = false
//firstDecimal = trueOrFalse
print("Will not compile because both variables are of (declared) different type.")
/*:
 Declare a variable and give it a string value. Then try to assign it to `firstDecimal`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
 */
var stringVar = "Hello World!"
//firstDecimal = stringVar
print("Similar to previous case. stringVar is of type String, firstDecimal is of type Double.")
/*:
 Finally, declare a variable with a whole number value. Then try to assign it to `firstDecimal`. Why won't this compile even though both variables are numbers? Print a statement to the console explaining why not, and remove the line of code that will not compile.
 */
var wholeNum = 5
//firstDecimal = wholeNum
print("firstDecimal is of type Double, and wholeNum is of tpe int.")
//: [Previous](@previous)  |  page 7 of 10  |  [Next: App Exercise - Tracking Different Types](@next)
