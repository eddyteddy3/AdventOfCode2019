import Foundation
import PlaygroundSupport

let fileName = "text.txt"

let file = Bundle.main.url(forResource: "text", withExtension: "txt")

var fileContents: String?

do {
    fileContents = try String(contentsOf: file!)
} catch  {
    print("Error reading text files")
}

print("File Contents: \(fileContents)")

if ((fileContents?.split(separator: "n")) != nil) {
    print("found!")
}

var strArray = fileContents?.components(separatedBy: "\n")
strArray?.removeLast()

for index in 0...strArray!.count - 1 {
    if strArray![index].contains("\\") {
        
        strArray![index].removeLast()
        //print(strArray![index])
        
        //var temp = word
        //temp.removeLast()
        //print(temp)
        //newStrArry?.append(temp)
    }
}

var newArr = [Int]()
print(strArray)
for number in strArray! {
    var temp = Int(number)! / 3
    temp = temp - 2
    newArr.append(temp)
}

print(newArr)

var i = newArr.count
var sum = 0

while i > 0 {
    print(i)
    i = i - 1
    
    if i != 0 {
        sum = newArr[i] + newArr[i - 1] + sum
    }
}

sum = sum/3
sum = sum - 2

print(sum)
