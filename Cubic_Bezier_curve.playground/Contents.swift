import UIKit
import Darwin


// Creating Array
var P1: [Float] = []
var P2: [Float] = []
var P3: [Float] = []
var P4: [Float] = []


// Function
func calculateBezierCurve(P1x: Float, P1y: Float, P2x: Float, P2y:Float, P3x:Float, P3y: Float, P4x: Float, P4y: Float, t: Float) -> [Float] {
    
    switch t {
    case 0...1:
        P1.append(P1x)
        P1.append(P1y)
        P2.append(P2x)
        P2.append(P2y)
        P3.append(P3x)
        P3.append(P3y)
        P4.append(P4x)
        P4.append(P4y)
        
        // The formula for calculating the X and Y coordinate of the Cubic Bezier curve
        let x = pow(1 - t, 2) * P1[0] + 3 * pow(1 - t, 2) * t * P2[0] + 3 * (1 - t) * pow(t, 2) * P3[0] + pow(t, 3) * P4[0]
        let y = pow(1 - t, 2) * P1[1] + 3 * pow(1 - t, 2) * t * P2[1] + 3 * (1 - t) * pow(t, 2) * P3[1] + pow(t, 3) * P4[1]
        
        //Formula for calculating orientation/slope
        let dx =  3 * pow(t, 2) * (-P1[0] + 3 * P2[0] - 3 * P3[0] + P4[0]) + 6 * t * (P1[0] - 2 * P2[0] + P3[0]) - 3 * (P1[0] + P2[0])
        
        
        print("X coordinate: \(x), Y Coordinate: \(y), Orientation: \(dx)")
        return [x, y, dx]
       
    default:
        print("Please init t value from 0...1")
        return [0.0]
        
    }

}

// Run function

//calculateBezierCurve(P1x: <#T##Float#>, P1y: <#T##Float#>, P2x: <#T##Float#>, P2y: <#T##Float#>, P3x: <#T##Float#>, P3y: <#T##Float#>, P4x: <#T##Float#>, P4y: <#T##Float#>, t: <#T##Float#>)
