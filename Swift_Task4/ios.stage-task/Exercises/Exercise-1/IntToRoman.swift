import Foundation

public extension Int {
    
    var roman: String? {
        if (self <= 0 || self > 3999) {return nil}
        
        var number = self
        var result = ""
        
        while number > 0 {
            
            switch number {
            case 1000..<4000:
                result.append("M")
                number-=1000
                
            case 900..<1000:
                result.append("CM")
                number-=900
                
            case 500..<900:
                result.append("D")
                number-=500
                
            case 400..<500:
                result.append("CD")
                number-=400
                
            case 100..<400:
                result.append("C")
                number-=100
                
            case 90..<100:
                result.append("XC")
                number-=90
                
            case 50..<90:
                result.append("L")
                number-=50
                
            case 40..<50:
                result.append("XL")
                number-=40
                
            case 10..<40:
                result.append("X")
                number-=10
                
            case 9..<10:
                result.append("IX")
                number-=9
                
            case 5..<9:
                result.append("V")
                number-=5
                
            case 4..<5:
                result.append("IV")
                number-=4
                
            case 1..<4:
                result.append("I")
                number-=1
                
            default:
                return result
            }
        }
        return result
    }
}
