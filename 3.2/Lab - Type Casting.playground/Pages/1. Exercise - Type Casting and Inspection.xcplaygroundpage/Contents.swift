/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var randomNums : [Any] = [2.5, 200, "wow", true]

randomNums.forEach
{
    item in
    print(item)
}

/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */
randomNums.forEach
{
    item in
    if let el = item as? Int
    {
        print("The integer has a value of: \(el)")
    }
}

/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
var DicMix : [String : Any] = ["KeyOne": "9000", "KeyTwo": 200, "KeyThree": true, "KeyFour": 2.5, "KeyFive": "Hello"]
//var DicMix : [String : Any] = ["KeyOne": true, "KeyTwo": true, "KeyThree": true, "KeyFour": true]

DicMix.forEach
{
    val in
    print("Key: \(val.key) Value: \(val.value)")
}
/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total : Double = 0
print("TEST 1")
DicMix.forEach
{
    val in
    if let m = val.value as? Double
    {
        total += m
        print("Total points: \(total)")
    } else if let m = val.value as? Int
    {
        total += Double(m)
        print("Total points: \(total)")
    } else if val.value as? String != nil
    {
        total += 1
        print("Total points: \(total)")
    }  else if val.value as? Bool == true
    {
        total += 2
        print("Total points: \(total)")
    } else if val.value as? Bool == true
    {
        total -= 3
        print("Total points: \(total)")
    }
}

/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */
var total2 : Double = 0

print("TEST 2")
DicMix.forEach
{
    val in
    if let m = val.value as? Double
    {
        total += m
        print("Total points: \(total)")
    } else if let m = val.value as? Int
    {
        total += Double(m)
        print("Total points: \(total)")
    } else if let str = val.value as? String
    {
        total += Double(str) ?? 0
        print("Total points: \(total)")
    }
}
//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
