//
//  main.swift
//  calculator-v2
//
//  Created by studentuser on 4/7/16.
//  Copyright © 2016 studentuser. All rights reserved.
//

import Foundation

typealias MathOperation = (Int, Int)-> Int

func calculate(x: Int, y: Int, operation: MathOperation)-> Int{
    return operation(x, y)
}


let add = {(x: Int, y: Int) -> Int
    in return x + y
}

let subtract = {(x:Int, y:Int) -> Int
    in return x - y
}

let multiply = {(x:Int, y:Int)-> Int
    in return x * y
}

let divide = {(x:Int, y:Int)-> Int
    in return x / y
}

let mod = {(x: Int, y: Int)-> Int
    in return x % y
}

print(calculate(4, y:5, operation: add))

let arraySum = {(array: [Int]) -> Int in
    var result = 0
    for element in array {
        result = result + element
    }
    return result
}

let arrayMultiplication = {(array:[Int]) -> Int in
    if(array.count == 0){
        print("Empty Array")
        return -1
    }
    var result = array[0]
    for element in array{
        result = result * element
    }
    return result
}

typealias arrayOperation = (array:[Int]) -> Int

//func arrayCalculate (array:[Int], op:arrayOperation)-> Int{
//    return op([Int])
//}


let arrayCount = {(array: [Int]) -> Int in
    return array.count
}

let arrayAvg = {(array: [Int]) -> Int in
    var sum = 0
    for element in array{
        sum = sum + element
    }
    return (sum / array.count)
}
print(arrayMultiplication([2, 3, 4]))
print(arrayCount([3, 4, 5]))

// Tuple creation as a typealias
typealias Point = (x : Int, y: Int)


let addPoints = {(a: Point, b: Point) ->  (x: Int, y: Int)  in
    return (a.0 + b.0, a.1 + b.1)
}

let subtractPoints = {(a: Point, b:Point) -> (x: Int, y: Int) in
    return (a.0 - b.0, a.1 - b.1)
}
print(subtractPoints((1, 2), (3, 4)))


typealias PointDic = Dictionary<String, Int>

func addDic(a: PointDic, b: PointDic)-> PointDic{
    var sumx:Int = 0
    var sumy:Int = 0
    for (key, _) in a{
        if(key == "x") {
            sumx = sumx + a[key]!
        } else if (key == "y"){
            sumy = sumy + a[key]!
        } else {
            sumy = sumy + 0
            sumx = sumx + 0
        }
    }
    
    for (key, _) in b{
        if(key == "x") {
            sumx = sumx + b[key]!
        } else if (key == "y"){
            sumy = sumy + b[key]!
        } else {
            sumy = sumy + 0
            sumx = sumx + 0
        }
    }
    
    return ["y": sumy, "x" : sumx]
}

func subtractDic(a: PointDic, b: PointDic)-> PointDic{
    var sumx:Int = 0
    var sumy:Int = 0
    for (key, _) in a{
        if(key == "x") {
            sumx = sumx + a[key]!
        } else if (key == "y"){
            sumy = sumy + a[key]!
        } else {
            sumy = sumy + 0
            sumx = sumx + 0
        }
    }
    
    for (key, _) in b{
        if(key == "x") {
            sumx = sumx - b[key]!
        } else if (key == "y"){
            sumy = sumy - b[key]!
        } else {
            sumy = sumy + 0
            sumx = sumx + 0
        }
    }
    
    return ["y": sumy, "x" : sumx]
}


print(subtractDic(["x": 10, "y":6 ], b:["x": 9, "y": 4]))

