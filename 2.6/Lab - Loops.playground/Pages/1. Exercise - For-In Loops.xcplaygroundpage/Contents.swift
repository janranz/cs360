/*:
 ## Exercise - For-In Loops
 
 Create a for-in loop that loops through values 1 to 100, and prints each of the values.
 */
for n in 1...100
{
    print("Value: \(n)")
    
}

/*:
 Create a for-in loop that loops through each of the characters in the `alphabet` string below, and prints each of the values alongside the index.
 */
let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

for n in alphabet
{
    print("Value: \(n)")
}
/*:
 Create a `[String: String]` dictionary, where the keys are names of states and the values are their capitals. Include at least three key/value pairs in your collection, then use a for-in loop to iterate over the pairs and print out the keys and values in a sentence.
 */
var state: [String:String] = [
    "Idaho":"Boise",
    "Washington":"Seattle",
    "Oregon":"Portland"
]

for n in state.keys
{
    if let cap = state[n]
    {
        print("The capital of \(n) is \(cap)!")
    }
}

//: page 1 of 6  |  [Next: App Exercise - Movements](@next)
