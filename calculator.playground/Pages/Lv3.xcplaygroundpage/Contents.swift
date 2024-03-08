
// 내배캠 1주차 과제 - 계산기 Lv3
// 이대호

import Foundation

//더하기 클래스
class AddOperation {

    func add(firstNumber: Double, secondNumber: Double) -> Double {
        let result = firstNumber + secondNumber
        return result

    }

}

//빼기 클래스
class SubtractOperation {

    func sub(firstNumber: Double, secondNumber: Double) -> Double {
        let result = firstNumber - secondNumber
        return result

    }

}

// 곱하기 클래스
class MultiplyOperation {

    func mul(firstNumber: Double, secondNumber: Double) -> Double {
        let result = firstNumber * secondNumber
        return result

    }

}

// 나눗셈 클래스
class DivideOperation {

    func div(firstNumber: Double, secondNumber: Double) -> Double {
        var result: Double = 0.0
        if secondNumber != 0 {
            result = firstNumber / secondNumber
        }else {
            print("ERROR")
        }

        return result
    }

}

// 나머지 클래스
class RemainderOperation {

    func remain(firstNumber: Double, secondNumber: Double) -> Double {
        return Double(Int(firstNumber) % Int(secondNumber))

    }

}


class Calculator {

    let add = AddOperation()
    let sub = SubtractOperation()
    let mul = MultiplyOperation()
    let div = DivideOperation()
    let remain = RemainderOperation()
    
   
    //사칙연산을 계산하는 메서드
    func calculator(_ operatorSymbol: String, firstNumber: Double, secondNumber: Double) -> Double {
        var result: Double = 0.0

        switch operatorSymbol {
        case "+":
            result = add.add(firstNumber: firstNumber, secondNumber: secondNumber)
        case "-":
            result = sub.sub(firstNumber: firstNumber, secondNumber: secondNumber)
        case "*":
            result = mul.mul(firstNumber: firstNumber, secondNumber: secondNumber)
        case "/":
            result = div.div(firstNumber: firstNumber, secondNumber: secondNumber)
        case "%":
            result = remain.remain(firstNumber: firstNumber, secondNumber: secondNumber)
        default:
            print("사칙 연산이 아닙니다.")
            break
        }

        return result
    }


}
let calculator = Calculator()
print("나눗셈 : \(calculator.calculator("/", firstNumber: 3, secondNumber: 0))")
print("더하기 : \(calculator.calculator("+", firstNumber: 3, secondNumber: 4))")
print("곱셈 : \(calculator.calculator("*", firstNumber: 3, secondNumber: 10))")
print("뺴기 : \(calculator.calculator("-", firstNumber: 10, secondNumber: 4))")
print("나머지 : \(calculator.calculator("%", firstNumber: 10, secondNumber: 3))")







