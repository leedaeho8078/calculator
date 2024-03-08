// 내배캠 1주차 과제 - 계산기 Lv4-2
// 이대호


//프로토콜을 이용하여 구현
// 사칙연산 프로토콜

protocol AbstractOperation {
    func add(firstNumber: Double, secondNumber: Double) -> Double
    func sub(firstNumber: Double, secondNumber: Double) -> Double
    func mul(firstNumber: Double, secondNumber: Double) -> Double
    func div(firstNumber: Double, secondNumber: Double) -> Double
    func remain(firstNumber: Double, secondNumber: Double) -> Double

}


//더하기,뺴기,나누기,곱하기 연산을 할 수 있는 클래스
//사칙연산 프로토콜 채택
class Calculator: AbstractOperation {

    func add(firstNumber: Double, secondNumber: Double) -> Double {
        let result = firstNumber + secondNumber
        return result

    }

    func sub(firstNumber: Double, secondNumber: Double) -> Double {
        let result = firstNumber - secondNumber
        return result

    }

    func mul(firstNumber: Double, secondNumber: Double) -> Double {
        let result = firstNumber * secondNumber
        return result

    }

    func div(firstNumber: Double, secondNumber: Double) -> Double {
        var result: Double = 0.0
        if secondNumber != 0 {
            result = firstNumber / secondNumber
        }else {
            print("ERROR")
        }

        return result
    }

    func remain(firstNumber: Double, secondNumber: Double) -> Double {
        return Double(Int(firstNumber) % Int(secondNumber))

    }


    //사칙연산을 계산하는 메서드
    func calculator(_ operatorSymbol: String, firstNumber: Double, secondNumber: Double) -> Double {
        var result: Double = 0.0

        switch operatorSymbol {
        case "+":
            result = self.add(firstNumber: firstNumber, secondNumber: secondNumber)
        case "-":
            result = self.sub(firstNumber: firstNumber, secondNumber: secondNumber)
        case "*":
            result = self.mul(firstNumber: firstNumber, secondNumber: secondNumber)
        case "/":
            result = self.div(firstNumber: firstNumber, secondNumber: secondNumber)
        case "%":
            result = self.remain(firstNumber: firstNumber, secondNumber: secondNumber)
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







