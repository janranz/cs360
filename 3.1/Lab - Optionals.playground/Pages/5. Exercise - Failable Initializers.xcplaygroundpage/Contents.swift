/*:
 ## Exercise - Failable Initializers
 
 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2017.
 */
struct Computer
{
    var ram : Int
    var yearManufactured : Int
    
    init?(Ram: Int, Year: Int)
    {
        if Ram > 0 && (Year > 1970 && Year < 2017)
        {
            self.ram = Ram
            self.yearManufactured = Year
        } else
        {
            return nil
        }
    }
}

/*:
 Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
 */
var compOne = Computer(Ram: 4, Year: 2000)
var compTwo = Computer(Ram: 64, Year: 2029)

if let first = compOne
{
    print("Computer specs: RAM: \(first.ram) Year: \(first.yearManufactured)")
} else
{
    print("Computer out of specification.")
}
if let sec = compTwo
{
    print("Computer specs: RAM: \(sec.ram) Year: \(sec.yearManufactured)")
} else
{
    print("Computer out of specification.")
}
//: [Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
