/*:
 ## App Exercise - Progress Updates
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 In many cases you want to provide input to a function. For example, the progress function you wrote in the Functioning App exercise might be located in an area of your project that doesn't have access to the value of `steps` and `goal`. In that case, whenever you called the function, you would need to provide it with the number of steps that have been taken and the goal for the day so it can print the correct progress statement.
 
 Rewrite the function `progressUpdate`, only this time give it two parameters of type `Int` called `steps` and `goal`, respectively. Like before, it should print "You're off to a good start." if steps is less than 10% of goal, "You're almost halfway there!" if steps is less than half of goal, "You're over halfway there!" if steps is less than 90% of goal, "You're almost there!" if steps is less than goal, and "You beat your goal!" otherwise. Call the function and observe the printout.
 
 Call the function a number of times, passing in different values of `steps` and `goal`. Observe the printouts and make sure what is printed to the console is what you would expect for the parameters passsed in.
 */
var steps = 0
var goal = 500

func incrementSteps(s: inout Int)
{
    s += 1
}

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


for _ in 0..<goal
{
    incrementSteps(s:&steps)
    progressUpdate(g: goal, s: steps)
}

/*:
 Your fitness tracking app is going to help runners stay on pace to reach their goals. Write a function called pacing that takes four `Double` parameters called `currentDistance`, `totalDistance`, `currentTime`, and `goalTime`. Your function should calculate whether or not the user is on pace to hit or beat `goalTime`. If yes, print "Keep it up!", otherwise print "You've got to push it just a bit harder!"
 */
var currD = 0
var totD = 0
var currTime = 0
var gTime = 60.0 // min

func pacing(currentDistance: Double, totalDistance: Double, currentTime: Double, goalTime: Double)
{
    let goalPace = totalDistance / goalTime
    let currPace = currentDistance / currentTime
    
    if(currPace < goalPace)
    {
        print("You've got to push it just a bit harder!")
    } else
    {
        print("Keep it up!")
    }
}

//: [Previous](@previous)  |  page 4 of 6  |  [Next: Exercise - Return Values](@next)
