/*:
 ## App Exercise - A Functioning App
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 As you may have guessed, functions are key to making your app work. For example, in every exercise dealing with step count until now, you have simply assigned a number of steps to a `steps` variable. This isn't very realistic seeing as the number of steps you take increments one at a time and continues changing throughout the day.
 
 A reoccurring process like this is a perfect candidate for a function. Write a function called `incrementSteps` after the declaration of `steps` below that will increment `steps` by one and then print its value. Call the function multiple times and observe the printouts.
 */
var steps = 0
func incrementSteps(s: inout Int)
{
    s += 1
//    print("Steps taken: \(s).")
}


/*:
 Similarly, if you want to regularly provide progress updates to your user, you can put your control flow statements that check on progress into a function. Write a function called `progressUpdate` after the declaration of `goal` below. The function should print "You're off to a good start." if `steps` is less than 10% of `goal`, "You're almost halfway there!" if `steps` is less than half of `goal`, "You're over halfway there!" if `steps` is less than 90% of `goal`, "You're almost there!" if `steps` is less than `goal`, and "You beat your goal!" otherwise. Call the function and observe the printout. Remember, you can convert numbers using the appropriate Int or Double initializer.
 */
let goal = 10000

func progressUpdate(g: Int,s: Int)
{
    let tenPerc = (Double(g) * 0.10)
    let fiftyPerc = (Double(g) * 0.5)
    let nintyPerc = (Double(g) * 0.9)
    
    if Double(s) <= tenPerc
    {
        print("Steps Taken: \(s). You're off to a great start!")
    } else if(Double(s) > tenPerc) && (Double(s) <= fiftyPerc)
    {
        print("Steps Taken: \(s). You're almost halfway there!")
    } else if(Double(s) > fiftyPerc) && (Double(s) <= nintyPerc)
    {
        print("Steps Taken: \(s). You're over halfway there!")
    } else if(Double(s) > nintyPerc) && (Double(s) < Double(g))
    {
        print("Steps Taken: \(s). You're nearly there now!")
    } else {
        print("Steps taken: \(s). You beat your goal!")
    }
}
// call pU after iS
for _ in 0..<goal
{
    incrementSteps(s:&steps)
    progressUpdate(g: goal, s: steps)
}
//: [Previous](@previous)  |  page 2 of 6  |  [Next: Exercise - Parameters and Argument Labels](@next)
