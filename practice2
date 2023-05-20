import Foundation
//task1 Write a function to check if a given number is prime
func example1 (_ x: Int) -> Bool {
    for i in 2...x/2 {
        if x % i == 0 {
            return false
        }
    }
    return true
}

//task2 Find the sum of all elements in an array with reduce.
func example2 (_ x : [Int]) -> Int {
    return x.reduce(0, +)
}

//task3 Find the sum of all elements in a dictionary with reduce.
func example3 (_ x: [String: Int]) -> Int {
    let sum = x.values.reduce(0, +)
    return sum
}


//task4 Determine if a string is a palindrome.
func example4 (_ x: String) -> Bool {
    for i in 0...x.count/2 {
        if x.index(x.startIndex, offsetBy: i) == x.index(x.endIndex, offsetBy: -i) {
            return true
        }
    }
    return false
}

//task5 Count the number of vowels in a given string.
func example5 (_ x: String) -> Int {
    var count = 0
    let vowels : Set<Character> = ["a","o","i","u","e","A","E","U","I","O"]
    for char in x {
        if vowels.contains(char) {
        count += 1
        }
    }
    return count
}


//task6 Reverse the elements in an array.
func example6 (_ x: inout[Int]) -> [Int] {
    let lastIndex = x.count-1
    for i in 0...lastIndex/2 {
        (x[i],x[lastIndex-i]) = (x[lastIndex-i],x[i])
    }
    return x
}


//task7 Convert a string to title case (capitalize the first letter of each word).
func example7 (_ x: inout String) -> String {
    return x.capitalized
}


//task8 Count the occurrence of a specific character in a string.
func example8 (_ x: String, _ y: Character) -> Int {
    var count = 0
    for char in x {
        if char == y {
            count += 1
        }
    }
    return count
}

//task9 Determine if two strings are anagrams of each other.
func example9 (_ x: String, _ y: String) -> Bool {
    var xCopy = x
    var yCopy = y
    if x.count == y.count {
        for char in xCopy {
            if yCopy.contains(char) {
                if let i = xCopy.firstIndex(of: char), let j = yCopy.firstIndex(of: char) {
                    xCopy.remove(at: i)
                    yCopy.remove(at: j)
                }
                if xCopy.count == 0 && yCopy.count == 0 {
                    return true
                }
            }
        }
    }
    return false
}


//task10 Calculate the factorial of a given number.
func example10 (_ x : Int) -> Int {
    var fact = 1
    var y = x
    if x <= 1 {
        return x
    } else {
        while y > 1 {
            fact *= y
            y -= 1
        }
    }
    return fact
}

//task11 Find the smallest common multiple of two numbers.
func example11 (_ x: Int, _ y: Int) -> Int {
    let max = max(x,y)
    for i in max...x*y {
        if i % x == 0 && i % y == 0 {
            return i
        }
    }
    return x*y
}

//task12 Remove all even numbers from an array.
func example12 (_ x: [Int]) -> [Int] {
    var odds = [Int]()
    for i in 0..<x.count {
        if i % 2 != 0 {
            odds.append(i)
            }
        }
    return odds
}

//task13 Check if a given year is a leap year.
func example13 (_ x: Int) -> Bool {
    if x % 400 == 0 {
        return true
    } else if x % 4 == 0 && x % 100 != 0 {
        return true
    }
    return false
}

//task14 Sort an array of integers in ascending order.
func example14 (_ x: inout [Int]) -> [Int] {
    return x.reversed()
}

//task15 Replace all occurrences of a substring in a string with another substring.
func example15 (_ x: inout String, _ y: Substring, _ z: Substring) -> String {
    for _ in 0...x.count{
        if x.contains(y) {
            x = x.replacingOccurrences(of: y, with: z)
        }
    }
    return x
}

//task16 Calculate the power of a number using recursion.
func example16 (_ x: Int, _ y: Int) -> Int {
    var res = 1
    if y >= 1 {
        res = x * example16(x, y - 1)
    }
    return res
}

//task17 Find the second largest value in an array.
func example17 (_ x: [Int]) -> Int {
    let max = x.max()
    var xCopy = x
    if let i = xCopy.firstIndex(of: max!) {
        xCopy.remove(at: i)
    }
    return xCopy.max()!
}

//task18 Count the number of words in a sentence.
func example18 (_ x: String) -> Int {
    var count = 0
    for _ in 0...x.count {
        let word = x.split(separator: " ")
        count = word.count
    }
    return count
}

//task19 Remove all whitespace characters from a string.
func example19 (_ x: inout String) -> String {
    if x.contains(" ") {
            x = x.replacingOccurrences(of: " ", with: "")
    }
    return x
}

//task20 Check if a string contains only numeric characters.
func example20 (_ x: String) -> Bool {
    let digits : Set<Character> = ["0","1","2","3","4","5","6","7","8","9"]
    for char in x {
        if digits.contains(char) {
            return true
        }
    }
    return false
}

//task21 Merge two sorted arrays into a single sorted array.
func example21 (_ x: [Int], _ y: [Int]) -> [Int] {
    var newArr = [Int]()
    if x == x.sorted() && y == y.sorted() {
        newArr = (x+y).sorted()
    }
    return newArr
}

//task22 Convert a decimal number to binary.
func example22 (_ x: Int) -> String {
    let binary = String(x, radix: 2)
    return binary
}

//task23 Determine if a given string is a valid email address.
func example23 (_ x: String) -> Bool {
    let extensions: Set<String> = ["@gmail.com", "@yahoo.com", "@hotmail.com", "@mail.ru"]
    for i in extensions {
        if x.contains(i) {
            return true
        }
    }
    return false
}

//task24 Calculate the sum of all even numbers in an array.
func example24 (_ x: [Int]) -> Int {
    var evens = [Int]()
    for i in x {
        if i % 2 == 0 {
            evens += [i]
        }
    }
    return evens.reduce(0, +)
}

//task25 Reverse the words in a sentence.
func example25 (_ x: String) -> String {
    let result = x.components(separatedBy: " ").reversed().joined(separator: " ")
    return result
}

//task26 Find the length of the longest word in a string.
func example26 (_ x: String) -> Int {
    var maxLength = 0
    let words =  x.components(separatedBy: " ")
    for word in words {
            let currentLength = word.count
            if currentLength > maxLength {
                maxLength = currentLength
            }
    }
    return maxLength
}

/*task27 Write a function that returns multiline string of “*” for a given row. F.E if raws = 4 it will be like this
*
**
***
****
 */
func example27 (_ x: Int) -> String {
    var i = 1
    var result = """
"""
    while x >= i {
        var l = String(repeating: "*", count: i)
        l.append("\n")
        result.append(l)
        i += 1
    }
    return result
}


/*Write a function that returns multiline string of “*” for a given row. F.E if raws = 4 it will be like this
 *
**
***
****
*/
func example28 (_ x: Int) -> String {
    var i = 1
    var result = """
"""
    while x >= i {
        let ast = String(repeating: "*", count: i)
        let space = String(repeating: " ", count: x-i)
        var l = space + ast
        l.append("\n")
        result.append(l)
        i += 1
    }
    return result
}

/* task29 Write a function that returns multiline string of “*” for a given row. F.E if raws = 4 it will be like this
 ****
 ***
 **
 *
 */
func example29 (_ x: Int) -> String {
    var i = x
    var result = """
"""
    while i >= 1 {
        var l = String(repeating: "*", count: i)
        l.append("\n")
        result.append(l)
        i -= 1
    }
    return result
}

/*task30 Write a function that returns multiline string of “*” for a given row. F.E if raws = 4 it will be like this
 ****
  ***
   **
    */
func example30 (_ x: Int) -> String {
    var i = x
    var result = """
"""
    while i >= 1 {
        let ast = String(repeating: "*", count: i)
        let space = String(repeating: " ", count: x-i)
        var l = space + ast
        l.append("\n")
        result.append(l)
        i -= 1
    }
    return result
}


