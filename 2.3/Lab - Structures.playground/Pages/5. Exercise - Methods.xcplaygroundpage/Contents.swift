/*:
 ## Exercise - Methods
 
 A `Book` struct has been created for you below. Add an instance method on `Book` called `description` that will print out facts about the book. Then create an instance of `Book` and call this method on that instance.
 */
struct Book {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    
    func getDescription()
    {
        print("Title: \(self.title)\nAuthor: \(self.author)\nPages: \(self.pages)\nPrice: \(self.price)")
    }
}
let test = Book(title: "Cell", author: "Stephen King", pages: 4, price: 4)

test.getDescription()
/*:
 A `Post` struct has been created for you below, representing a generic social media post. Add a mutating method on `Post` called `like` that will increment `likes` by one. Then create an instance of `Post` and call `like()` on it. Print out the `likes` property before and after calling the method to see whether or not the value was incremented.
 */
struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int
    
    mutating func like()
    {
        self.likes += 1
    }
}

var social = Post(message: "OK this is EPIC", likes: 0, numberOfComments: 13)

print(social.likes)
social.like()
print(social.likes)
social.like()
print(social.likes)
//: [Previous](@previous)  |  page 5 of 10  |  [Next: App Exercise - Workout Functions](@next)
