# Practice_2

### What are Optionals
Optionals are a feature in swift that allows you to represent the possibility of an absent value for a variable or a constant, meaning it can either have a value assigned, or be equal to nil. Optionals are declared by using a ? symbol after the type declaration, e.g. var name: String?. Optionals allow the compiler to enforce safety by preventing unexpected nil/null values from causing runtime errors and crashing an application. In order to access an optional value it must first be unwrap via one of several ways:
1. **Optional binding/if let**: This method is used if you want the program to continue running even if the optional value is nil, the unwrapped value can also only be used within the scope of the if let.
2. **Guard let**: This method is used if you want the function to exit/break or return if the value is equal to nil. if a value is successfully unwrapped with guard let, it can be used outside of the scope of the guard let.
3. **Nil coalescing**: Nil coalescing allows you to give an optional property a default value, usually for the sake of the UI incase the value is nil. This is denoted by two question marks ?? .
4. **Force unwrapping**: Force unwrapping is a way to forcefully unwrap an optional value without checking if it is nil or not, and force the code to continue running, which can produce crashes, it is only recommended to be used in specific situations such as testing.
### Difference between Obj-C Null and Swift Nil
In Objective-C, the term "null" is used to represent a null pointer, indicating that a reference variable does not currently refer to any object. Null is represented by the `NULL` macro or `nil` (which is equivalent to `NULL`).

In Swift, the term "nil" is used to represent the absence of a value for an optional variable. In Swift, "nil" represents the absence of a value for any type, not just object references. It is used with optional types to indicate that the variable does not currently have a value assigned to it.

While both "null" in Objective-C and "nil" in Swift indicate the absence of a value, there are a few important differences:

1. **Type Safety**: In Objective-C, "null" can be assigned to any object reference variable, regardless of the object's type. In Swift, "nil" is specifically used with optional types, which ensures type safety by explicitly indicating that a variable is optional and may have no value.
2. **Optional Chaining**: In Swift, you can use optional chaining to safely access properties and methods of an optional variable that may be nil. This allows you to check if a value exists before accessing it, preventing runtime errors. Objective-C does not have a feature like this.
3. **Optionals**: Swift introduces the concept of optionals, which allows you to declare variables that may or may not have a value. Optionals use the "nil" value to represent the absence of a value. This helps catch potential null-pointer-related errors at compile-time and promotes safer code.
### Difference between escapign and non escaping closure
**Non-Escaping Closures**:
By default, closures are considered non-escaping. A non-escaping closure is one that is executed within the lifetime of the function it's passed to. It means the closure is guaranteed to be executed before the function returns. Non-escaping closures can be used directly within the function without any special consideration. For example non-escaping closures are commonly used with higher order functions like map or filter.

**Escaping Closures**:
An escaping closure is one that outlives the function it's passed to. It means the closure can be stored, assigned to properties, or invoked outside the scope of the function. When a closure is escaping, you need to explicitly mark it with the @escaping attribute. For example a completion handler used to update the UI after an API.
### What is a capture list
It is a construct that allows you to capture and store references to variables or constants from the surrounding context within a closure. The capture list specifies which variables or constants should be captured and made available for use within the closure.

The capture list is defined as part of the closure's syntax, before the list of parameters and the "in" keyword. It is enclosed in square brackets `[ ]`. Inside the capture list, you specify the variables or constants that you want to capture, followed by the capture specifier, which determines how the capture should be performed.

There are two capture specifiers that can be used in a capture list:

1. **Strong Capture**: It is denoted by using the `self` keyword within the capture list. A strong capture creates a strong reference to the captured variable or constant, ensuring that it remains in memory as long as the closure exists.
2. **Weak Capture**: It is denoted by using the weak or unowned keywords within the capture list. A weak capture creates a weak reference to the captured variable or constant, allowing it to be deallocated if no other strong references exist.

Capture lists are particularly useful when working with closures that are long-lived or when you want to manage strong reference cycles. They provide control over how variables and constants are captured, allowing you to prevent memory leaks and handle capture semantics effectively within closures.
### What is the use of the defer keyword
n iOS development, the `defer` keyword is used in Swift to define a block of code that is executed when the current scope is exited, regardless of how the scope is exited (such as by returning from a function, throwing an error, or using the `break` or `continue` statements).

The `defer` statement is used to delay the execution of code until the current scope is about to be exited. It is often used to ensure that certain cleanup or finalization tasks are performed, regardless of the control flow within the scope. for example you may have a function that opens a file, and then does some set processes on it, you would add a defer statement within the function to close the file, to ensure that regardless of any return statement or error handling, the defer statement will run and close the file.

The defer keyword is particularly useful when you need to guarantee that certain cleanup or finalization tasks are performed, such as closing resources, releasing locks, or restoring the original state of an object. It helps improve the readability and maintainability of code by keeping related operations close together in the same scope.

### Can multiple defers be added, what order will they be executed
Multiple defer statements can be added to the same function, the last defer statement will run first, followed by the second-last and so on.
### What are Actors
In Swift, actors are a concurrency feature introduced in Swift 5.5 to help you write safe and efficient concurrent code. An actor is a special type of class that provides isolation for properties and methods, allowing safe access from multiple concurrent tasks.

Actors help you avoid data races and manage shared mutable state by enforcing exclusive access to their mutable properties. They allow concurrent access to their methods, but only one task can access a particular actor instance at a time.

Actors provide a structured and safe way to work with concurrent code, making it easier to reason about and maintain. They help you build scalable and efficient concurrent applications by providing isolation and synchronization mechanisms for shared mutable state.
### What is a Main Actor
In iOS development, the `MainActor` is a special actor introduced in Swift 5.5 that is associated with the main queue or main thread of an application. It is designed to simplify the handling of UI-related code and ensure that UI updates are performed on the main thread, which is required for thread-safety in UIKit and AppKit.

The `MainActor` is an attribute that can be applied to actor classes or methods. By marking an actor class or method with the `@MainActor` attribute, you indicate that it should be executed on the main queue.

By utilizing the MainActor attribute, you can simplify and ensure the thread-safety of UI-related code. It provides a clear and concise way to work with UI updates, making your code more robust and easier to maintain.
