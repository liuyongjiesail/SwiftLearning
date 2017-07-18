//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print("hello word!")

//简单值

var a : Double = 4

let label = "The width is "

let width = 94.00

let widthLabel = label + String(width)


let widthLabel2 = "labelwidth is \(width)"

let height = 100

var array = ["12", "34", "45"]

array[1] = "78"

print(array)

var dic = ["a":"b", "c":"d"]

dic["a"] = "y"

print(dic)

let emptyArray = [String]()

let emptyDic = [String:String]()

//控制流

let scoresArray = [56, 78, 34, 89, 99];

var count :NSInteger = 0

for score in scoresArray {
    
    if score > 60 {
        
        count += 3;
    } else {
        
        count += 1;
    }
    
}

print(count)


if scoresArray.count > 0 {
    
    print("ceshi")
}

var optionalString:String? = "hello"

print(optionalString == nil)

var optionalName:String? = "john" //这里的问号很重要

var greetring = "hello!"

optionalName = nil

//如果变量的可选值是 ，条件会判断为 ，大括号中的代码会被跳过。如果不是 ，会将值解包并赋给 后面的常量，这样代码块中就可以使用这个值了。

if let name = optionalName {
    
    greetring = "Hello, \(name)"
} else {
    
    greetring = "fail,\(optionalName)"
}

let nickName:String? = nil
let fullName:String = "liu yon jie"
let informalGreeting = "Hi \(nickName ?? fullName)"

//如果nickName 缺失的话就用fullName， 如果不缺失的话就用nickName

let vegetable = "red pepper"

switch vegetable {
case "celery":
    print("add")
case "cucumber", "water":
    print("*")
case let x where x.hasSuffix("pepper") :
    print("sub")
default:
    print("everything")
}


let interestringNumbers = [
    "Prime":[2, 3, 5, 7, 11, 13],
    "Fibonacci":[1, 1, 2, 3, 5, 8],
    "Square":[1, 4, 9, 16, 25]
]

var largest = 0
var fenlei:String = ""


for (kind, numbers) in interestringNumbers {
    
    for number in numbers {
        if number > largest {
            
            largest = number
            fenlei = kind
        }
    }
}
print(largest)
print(fenlei)

var n = 2

while n < 100 {
    n = n * 2
}
print(n)

var m = 2

repeat{
    m = m * 2
} while m < 100

print(m)

var total = 0

//使用 ..< 创建的范围不包含上界，如果想包含的话需要使用 ...
for i in 0...4 {
    
    total += i
}

print(total)

//函数和闭包

func greet(person:String, day:String) -> String {
    
    return "Hello \(person), today is\(day)."
}

print(greet(person: "xiaoliu", day: "Tuesday"))


func test(_ person:String, on day:String) -> String {
    
    return "Hello \(person), today is \(day)."
}

test("我", on: "你猜")

//元组
func calculateStatistics(scores:[Int]) -> (min:Int, max:Int, sum:Int){
    
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        
        if score > max {
            
            max = score
        } else if score < min {
            
            min = score
        }
        sum += score
    }
    return (min, max, sum)
    
}

let statistics = calculateStatistics(scores: [5, 2, 100, 89, 8, 3])

print(statistics.sum)
print(statistics.2)

print(statistics.min)
print(statistics.0)


//计算和
func sumOf(_ numbers:Int...) -> Int {
    
    var sum = 0
    for number in numbers {
        
        sum += number
    }
    
    return sum
}

sumOf(1,2,4)

//计算平均值
func valueOf(_ numbers:Int...) -> Double {
    
    var value:Double = 0
    var sum:Double = 0
    
    for number in numbers {
        
        sum += Double(number)
    }
    
    return (sum / Double(numbers.count))
}

valueOf(1,2,4)

print(String(format:"%.2f",valueOf(1, 2, 4)))

print(String(format:"%.2f", 2.23232344))

//函数的嵌套
func returnFifteen() -> Int {
    
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}

returnFifteen()

//addOne 函数作为makeIncrementer 函数的返回值
func makeIncrementer() -> ((Int) -> Int) {
    
    func addOne(number:Int) -> Int {
        
        return 1 + number
    }
    return addOne
}

var increment = makeIncrementer()

increment(7)

//函数也可以当做参数传入另一个函数 (lessThanTen作为参数)  判断数组是否包含比10小的数字
func hasAnyMatches(list:[Int], condition:(Int) -> Bool) -> Bool {
    
    for item in list {
        
        if condition(item) {
            
            return true;
        }
    }
    return false
}

func lessThanTen(number:Int) -> Bool {
    
    return number < 10
}

var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

//闭包
numbers.map({
    
    (number:Int) -> Int in
    let result = 3 * number
    
    if number % 2 == 0 {
        return result
    } else {
        return 0
    }
    
})

numbers.map ({ (number:Int) -> Int in
    
    let result = 3 * number
    
    if number % 2 == 0 {
        return result
    } else {
        return 0
    }
})

let mappedNumbers = numbers.map({number in 3 * number})

print(mappedNumbers)

let sortedNumbers = numbers.sort { $0 > $1}

print(sortedNumbers)

//对象和类

class Shape {
    
    var numberOfSides = 0
    let a = 10
    
    func simpleDescription() -> String {
        
        return "A shape with \(numberOfSides) sides. "
    }
    
    func small(number:Int) -> Bool {
        
        return number > 10
    }
    
    func test() -> () {
        
        print("空")
    }
    
}

var shape = Shape()

shape.numberOfSides = 7

var shapeDescriotion = shape.simpleDescription()

print(shape.a)

print(shape.small(number: 20))

shape.test()

var view:UIView = UIView.init()


class NamedShape {
    
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        
        self.name = name
    }
    
    func simpleDescription() -> String {
        
        return "A shape with \(numberOfSides) sides."
    }
    
}

//创建子类
class Square: NamedShape {
    
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        
        return "A squre with sides of lenght \(sideLength)."
    }
    
}

let test = Square(sideLength : 5.2, name:"my test square")
test.area()
test.simpleDescription()

//练习：创建一个圆的类，一个构造器，一个求圆的面积，重写父类的描述
class Circle: NamedShape {
    
    var radius: Double
    init(radius: Double, name: String) {
        
        self.radius = radius
        super.init(name: name)
        
    }
    
    func area() -> String {
        
        return String(format:"%.2f", M_PI * radius * radius)
    }
    
    override func simpleDescription() -> String {
        
        return "A squre with radius of \(radius)."
    }
    
}

var circle = Circle(radius: 5.0, name: "yuan")
circle.area()
circle.simpleDescription()

//类，创建属性
class EquilateralTriangle: NamedShape {
    
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        
        return "An equilateral triagle with sides of length \(sideLength)."
    }
    
}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")

print(triangle.perimeter)

triangle.perimeter = 9.9

print(triangle.perimeter)



class TriangleAndSquare {
    
    var triangle: EquilateralTriangle {
        
        willSet {
            
            square.sideLength = newValue.sideLength
        }
    }
    
    var square: Square {
        
        willSet {
            
            triangle.sideLength = newValue.sideLength
            
        }
    }
    
    
    init(size: Double, name: String) {
        
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength:size, name: name)
        
    }
    
}

var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)

let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength


//枚举和结构体

enum Rank: Int {
    
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

//let ace = Rank.Ace
//print(ace)
//let aceRawValue = ace.rawValue
//
//func compare(one: Int, two: Int) -> Bool {
//    
//    
//    
//}







