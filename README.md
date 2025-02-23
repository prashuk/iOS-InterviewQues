# iOS-InterviewQues

## iOS & Swift questions for interviews

1. What is the difference between **Synchronous** & **Asynchronous** task? 

```
Synchronous: waits until the task have completed
Asynchronous: completes a task in the background and can notify you when complete.
```

2. What’s **Completion Handler**? 

```
Completion handlers are super convenient when our app is making an API call, and we need to do something when that task is done, like updating the UI to show the data from the API call. We’ll see completion handlers in Apple’s APIs like dataTaskWithRequest and they can be pretty handy in your own code.
The completion handler takes a chunk of code with 3 arguments:(NSData?, NSURLResponse?, NSError?) that returns nothing: Void. It’s a closure.
The completion handlers have to marked @escaping since they are executed some point after the enclosing function has been executed.
```

3. What’s the difference between the **frame** and the **bounds**? 

```
The bounds of a UIView is the rectangle, expressed as a location (x,y) and size (width,height) relative to its own coordinate system (0,0). 
The frame of a UIView is the rectangle, expressed as a location (x,y) and size (width,height) relative to the superview it is contained within.
```

4. What is **Responder Chain** ? 

```
A ResponderChain is a hierarchy of objects that have the opportunity to respond to events received.
```

5. What is Singleton Pattern ? 

```
The Singleton design pattern ensures that only one instance exists for a given class and that there’s a global access point to that instance. It usually uses lazy loading to create the single instance when it’s needed the first time.
The singleton pattern guarantees that only one instance of a class is instantiated
```

6. MVVM:

```
UIKit independent representation of your View and its state. The View Model invokes changes in the Model and updates itself with the updated Model, and since we have a binding between the View and the View Model, the first is updated accordingly. 
```

7. MVP:

```
In MVP the presenter assumes the functionality of the "middle-man". In MVP, all presentation logic is pushed to the presenter.
https://www.captechconsulting.com/blogs/ios-design-patterns-mvc-and-mvvm
```

8. What is the Swift main **advantage** ? 

```
Optional Types, which make applications crash-resistant
Built-in error handling
Closures
Much faster compared to other languages
Type-safe language
Supports pattern matching
```

9. Explain what is **defer** ? 

```
defer keyword which provides a block of code that will be executed in the case when execution is leaving the current scope.
And it will execute that code whether the scope is exiting cleanly, from a guard, or while an error is being thrown.
When more than one are included, they will be called in reverse order. Think of them being included on a stack and popping them off one at a time.
```

10. How to pass a variable as a **reference** ? 

```
We need to mention that there are two types of variables: reference and value types. The difference between these two types is that by passing value type, the variable will create a copy of its data, and the reference type variable will just point to the original data in the memory.
```

11. How to **pass data** between view controllers?

```
Segue, in prepareForSegue method (Forward)
Delegate (Backward)
```

12. KVC — KVO

```
KVC adds stands for Key-Value Coding. It’s a mechanism by which an object’s properties can be accessed using string’s at runtime rather than having to statically know the property names at development time.

KVO stands for Key-Value Observing and allows a controller or class to observe changes to a property value. In KVO, an object can ask to be notified of any changes to a specific property, whenever that property changes value, the observer is automatically notified.
```

13. Core Data

```
What is NSFetchRequest?
NSFetchRequest is the class responsible for fetching from Core Data. Fetch requests are both powerful and flexible. You can use fetch requests to fetch a set of objects meeting the provided criteria, individual values and more.

Explain **NSPersistentContainer**
The persistent container creates and returns a container, having loaded the store for the application to it. This property is optional since there are legitimate error conditions that could cause the creation of the store to fail.

Explain **NSFetchedResultsController**
NSFetchedResultsController is a controller, but it’s not a view controller. It has no user interface. Its purpose is to make developers’ lives easier by abstracting away much of the code needed to synchronize a table view with a data source backed by Core Data.
Set up an NSFetchedResultsController correctly, and your table will mimic its data source without you have to write more than a few lines of code.
```

14. Please explain **final** keyword into the class?

```
By adding the keyword final in front of the method name, we prevent the method from being overridden. If we can replace the final class keyword with a single word static and get the same behavior.
The difference is that subclasses can override class methods; they cannot override static methods.
```

15. What is the difference **fileprivate**, **private** and **public private**(set) access level ?

```
fileprivate is accessible within the current file, private is accessible within the current declaration.
public private(set) means getter is public, but the setter is private.
```

16. REST, HTTP, JSON — What’s that?

```
HTTP is the application protocol or set of rules, websites use to transfer data from the web server to client. The client (your web browser or app) use to indicate the desired action:
GET: Used to retrieve data, such as a web page, but doesn’t alter any data on the server.
HEAD: Identical to GET but only sends back the headers and none of the actual data.
POST: Used to send data to the server, commonly used when filling a form and clicking submit.
PUT: Used to send data to the specific location provided.
DELETE: Deletes data from the specific location provided.
REST, or REpresentational State Transfer, is a set of rules for designing consistent, easy-to-use and maintainable web APIs.
JSON stands for JavaScript Object Notation; it provides a straightforward, human-readable and portable mechanism for transporting data between two systems. Apple supplies the JSONSerialization class to help convert your objects in memory to JSON and vice-versa.
```

17. What is the difference between a **delegate** and an **NSNotification**?

```
Delegates and NSNotifications can be used to accomplish nearly the same functionality. However, delegates are one-to-one while NSNotifications are one-to-many.
There are many different ways such as Delegate, KVO, Segue, and NSNotification, Target-Action, Callbacks.
```

18. What are the **states** of an **iOS** App?

```
Non-running — The app is not running.
Inactive — The app is running in the foreground, but not receiving events. An iOS app can be placed into an inactive state, for example, when a call or SMS message is received.
Active — The app is running in the foreground, and receiving events.
Background — The app is running in the background, and executing code.
Suspended — The app is in the background, but no code is being executed.
```

19. What is **Downcasting**?

```
When we’re casting an object to another type in Objective-C, it’s pretty simple since there’s only one way to do it. In Swift, though, there are two ways to cast — one that’s safe and one that’s not.
as used for upcasting and type casting to bridged type
as? used for safe casting, return nil if failed
as! used to force casting, crash if failed. should only be used when we know the downcast will succeed.
```

20. What is the difference ANY and ANYOBJECT ?

```
Any can represent an instance of any type at all, including function types and optional types.
AnyObject can represent an instance of any class type.
```

> **Optional chaining** is a process for querying and calling properties, methods, and subscripts on an optional that might currently be nil. If the optional contains a value, the property, method, or subscript call succeeds; if the optional is nil, the property, method, or subscript call returns nil. Multiple queries can be chained together, and the entire chain fails gracefully if any link in the chain is nil. We use optional chaining when we do not really care if the operation fails; otherwise, we use if let or guard. Optional chaining lets us run code only if our optional has a value.

21. Explain the difference between atomic and nonatomic synthesized properties

```
atomic : It is the default behaviour. If an object is declared as atomic then it becomes thread-safe. Thread-safe means, at a time only one thread of a particular instance of that class can have the control over that object.

nonatomic: It is not thread-safe. We can use the nonatomic property attribute to specify that synthesized accessors simply set or return a value directly, with no guarantees about what happens if that same value is accessed simultaneously from different threads. For this reason, it’s faster to access a nonatomic property than an atomic one.
```

