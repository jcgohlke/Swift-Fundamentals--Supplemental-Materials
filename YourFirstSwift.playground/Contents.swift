//: # Your First Swift Program
//: Description: In this lesson we will learn what Swift is and how it can be used to build iOS and Mac applications, as well as the possibilities for the future.
//: ## What is Swift and Who Created It?
//: The Swift programming language was built by Apple in-house over the course of about 4 years. [^1] It was designed to be a modern replacement for their previous language-of-choice, Objective-C. You'll learn about Objective-C as well, but let's not get ahead of ourselves.
//: Swift was created to be versatile and powerful, but most importantly, highly readable. Check out the example below and try to determine what it will do:


print("Hello, World!")


//: This line of code will print the message in between the double-quotes to the screen. In fact, the above line is actually a complete program. Swift does not require the sometimes cumbersome boilerplate needed by other languages to allow code to be executed.

//: ## Constants and Variables
//: Since it's so easy to write, let's try some more code:


let captain = "Kathryn Janeway"
print(captain)


//: The above code block, which is how you refer to multiple lines of code that are related, creates a constant called `captain` and stores the string literal `Kathryn Janeway` inside the constant. You can think of constants and variables kind of like aliases or nicknames for bits of data you want to use in multiple places. Now, instead of typing `"Kathryn Janeway"` everywhere we want to refer to her, we can instead use the constant identifier `captain`, like we do in the second line where we want to print her name.
//: From line 2 to the end of the program, the identifier `captain` will always refer to the string `Kathryn Janeway`. That is the main difference between constants and variables. The value of a constant cannot change once it is set, whereas a variable's value is well, variable. It can be set and reset over the life of the program.
//: When you declare a constant, which is what we did in line 2 above, you start the line with the keyword `let`. This is a word reserved in Swift that means something specific to the Swift compiler. It cannot be used for anything else, like the name of a constant or variable. After `let`, you provide an identifier, which can be anything you'd like, as long as it comforms to the following requirements:
//: * The first character cannot be any digit 0-9
//: * The space character is not allowed in any position

//: Here are some examples of valid identifiers:


let theIronYard = "awesome", tiy100 = "100%", _travelBack = "1985"
let 你好 = "你好世界"


//: Notice that none of the identifiers have a digit as the first character, but that digits are allowed in other positions. Also notice that standard a-z characters are not the only ones allowed. Swift was built such that any Unicode character is possible in an identifier, so long as it is not the space character. [^2] Though not a requirement, the naming convention for standard constant and variable identifiers is to use camel case. [^3] Since spaces are not allowed, if an identifier is really a short phrase, the first letter of each word is capitalized to help with readability, except for the first character of the first word.
//: Let's do some simple math with constants:


let students = 30
let tiyStaff = 4
let totalPeople = students + tiyStaff
//totalPeople = 10
//: In the above block, we declare two different constants, `students` and `tiyStaff` and initialize them to the values `30` and `4`, respectively. We then add them together and store the sum in a new constant called `totalPeople`. This new constant should have a value `34`. On line 9, if we try to reset the value of totalPeople to `10`, what will the value of that constant be on the next line?
//: It will still be `34`, as changing the value of a constant is not allowed in Swift. In fact, not only will the value not reset, but the Swift compiler will throw an error pretty much as soon as you type line 9. Since constants cannot be changed once set, the compiler can be programmed to look at your code as you write it and help you to prevent introducing obvious problems into your codebase. If you were to look at the above code block in a playground or project in Xcode, the compiler would tell you line 9 has the following error:
//: `Cannot assign to value: 'totalPeople' is a 'let' constant`
//: This means that the assignment of `10` to `totalPeople` isn't allowed because you've declared `totalPeople` to be a constant with the `let` keyword.
//: Variables are declared and assigned values very similarly to constants, with one minor difference:


var appleCount = 10
appleCount -= 2
    
    
//: The keyword used to declare a variable is `var`. If an identifier is declared with `var`, a value can be assigned and then either manipulated or replaced entirely later. As shown above, in line 11, the value of `appleCount` is decreased by `2` (`-=` is a shortcut way of taking the value of the variable, subtracting the number on the right, and then storing that new value back in the variable. You can use `+=` to similar effect).

//: ## Data Types
//: So far, we've seen two different data types in Swift, Integers and Strings. There are several others, and in this first lesson we'll learn about a couple more. See the list below for a description of each:
//: * Int - integer, a whole number: `1, 2, 3, 4, 5...` not something like `2.5` or `¾`
//: * Double - double-precision floating-point number, meaning a whole or fractional number: `1.5`, `3.75`, `1.128`, `3.666666667`, `6.0000`, etc. Double-precision means that a very large or small number can be stored within a Double.
//: * Bool - a Boolean value, of which there are two: `true` and `false`
//: * String - a sequence of characters: `Kathryn Janeway`, `The Iron Yard`, etc. Strings can contain any Unicode character, including spaces.
//: Swift is known as a strongly-typed language, meaning that the compiler will not allow data types that are different from being converted automatically. This is generally referred to as type safety. To illustrate, see the example below:


var life = 42
//life = "The ultimate answer to life, the universe and everything"


//: The above example would throw an error on line 13. The variable `life` is initialized with a value that is an Integer, `42`. Once set, even though `life` is a variable, the data type of the value cannot be different from that used to initialize it. Hence, when the system tries to execute line 13, the string cannot be stored because it is a different data type than what the variable is looking for. This may seem like an unneccesary constraint, but imagine that in your program you set `life` to an Integer and then later on try to use that value to perform some arithmetic. If in the interim it was set to a String, when it came time to perform the arithmetic, your app would encounter that unexpected String and crash. This would certainly produce a poor user experience, and may not be caught by you during your pre-release testing. Swift with its type safety is trying to help you catch these errors essentially as soon as you make them, thus saving you time and crash debugging later on.
//: [^1]: https://developer.apple.com/swift/
//: [^2]: http://www.unicode.org/versions/Unicode8.0.0/
//: [^3]: https://en.wikipedia.org/wiki/CamelCase. Note the link says that the first character can be either upper or lower case, but in programming, we always use lower case for the first character.
