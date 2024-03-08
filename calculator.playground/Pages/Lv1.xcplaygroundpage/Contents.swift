
// 내배캠 1주차 과제 - 계산기 Lv1
// 이대호


import Foundation

class Calculator {
    
    //    사칙연산을 계산하는 메서드
    func calculator(_ operatorSymbol: String, firstNumber: Double, secondNumber: Double) -> Double {
        var result: Double = 0.0
        
        switch operatorSymbol {
        case "+":
            result = firstNumber + secondNumber
        case "-":
            result = firstNumber - secondNumber
        case "*":
            result = firstNumber * secondNumber
        case "/":
            if secondNumber != 0 {
                result = firstNumber / secondNumber
            }else {
                print("ERROR")
            }
        default:
            print("사칙 연산이 아닙니다.")
            break
        }
        
        return result
    }
    
    
}


let calculator = Calculator()
print("더하기 : \(calculator.calculator("+", firstNumber: 10, secondNumber: 3))")
print("뺄셈 : \(calculator.calculator("-", firstNumber: 10, secondNumber: 5))")
print("곱셈 : \(calculator.calculator("*", firstNumber: 10, secondNumber: 3))")
print("나눗셈: \(calculator.calculator("/", firstNumber: 10, secondNumber: 5))")

