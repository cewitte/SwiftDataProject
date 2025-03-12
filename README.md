# SwiftData: Introduction

Paul Hudson's ([@twostraws](https://x.com/twostraws)) 100 Days of Swift UI Project 12.

## Project 12

Source URL: [SwiftData Introduction](https://www.hackingwithswift.com/books/ios-swiftui/swiftdata-introduction)

"This technique project is going to explore SwiftData in more detail, starting with a summary of some basic techniques then building up to tackling some more complex problems.

As you'll see, `SwiftData` really pushes hard on advanced features of both Swift and SwiftUI, all to help make it easy for us to store data efficiently. It's not always easy, though, and there are a few places that take quite a bit of thinking to use properly."

### Filtering `@Query` using `Predicate`

Source URL: [Filtering @Query using Predicate](https://www.hackingwithswift.com/books/ios-swiftui/filtering-query-using-predicate)

Branch: `01-using-predicate`

"You've already seen how `@Query` can be used to sort `SwiftData` objects in a particular order, but it can also be used to filter that data using a predicate – a series of tests that get applied to your data, to decide what to return.

The syntax for this is a little odd at first, mostly because this is actually another macro behind the scenes - Swift converts our predicate code into a series of rules it can apply to the underlying database that stores all of SwiftData's objects."

Here's an example:

```
@Query(filter: #Predicate<User> { user in
        user.name.localizedStandardContains("R") &&
        user.city == "London"
    }, sort: \User.name) var users: [User]
```

"Let's break that down:

1. The filter starts with #Predicate<User>, which means we're writing a predicate (a fancy word for a test we're going to apply).
2. That predicate gives us a single user instance to check. In practice that will be called once for each user loaded by SwiftData, and we need to return true if that user should be included in the results.
3. Our test checks whether the user's name contains the letter R. If it does, the user will be included in the results, otherwise they won't. For this purpose, iOS gives us a separate method `localizedStandardContains()`. This also takes a string to search for, except it automatically ignores letter case, so it's a much better option when you're trying to filter by user text."

### Dynamically sorting and filtering `@Query` with SwiftUI

Source URL: [Dynamically sorting and filtering `@Query` with SwiftUI](https://www.hackingwithswift.com/books/ios-swiftui/dynamically-sorting-and-filtering-query-with-swiftui)

Branch: `02-dynamically-sorting`

"What we're going to do is move that list out into a separate view – a view specifically for running the SwiftData query and showing its results, then make it optionally show all users or only users who are joining in the future."

### Relationships with SwiftData, SwiftUI, and `@Query`

Source URL: [Relationships with SwiftData, SwiftUI, and `@Query`](https://www.hackingwithswift.com/books/ios-swiftui/relationships-with-swiftdata-swiftui-and-query)

Branch: `03-swiftdata-relationships`

"SwiftData allows us to create models that reference each other, for example saying that a `School` model has an array of many `Student` objects, or an `Employee` model stores a `Manager` object.

These are called relationships, and they come in all sorts of forms. SwiftData does a good job of forming these relationships automatically as long as you tell it what you want, although there's still some room for surprises!"

### Acknowledgments

Original code created by: [Paul Hudson - @twostraws](https://x.com/twostraws) (Thank you!)

Made with :heart: by [@cewitte](https://x.com/cewitte)
