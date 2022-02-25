import Foundation


public enum KodemiViewConstant {
    public static let pointA = (x:120.0, y:57.0)
    public static let pointB = (x:0.0, y:84.0)
    public static let pointC = (x:120.0, y:160.0)
    public static let pointD = (x:164.0, y:0.0)
    public static let pointE = (x:275.0, y:78.0)
    public static let pointF = (x:170.0, y:104.0)
    
    private static let scaleXFactor = 275.0
    private static let scaleYFactor = 160.0
    
    public static let scalePointA = (x:KodemiViewConstant.pointA.x/KodemiViewConstant.scaleXFactor,
        y:KodemiViewConstant.pointA.y/KodemiViewConstant.scaleYFactor)
    public static let scalePointB = (x:KodemiViewConstant.pointB.x/KodemiViewConstant.scaleXFactor,
         y:KodemiViewConstant.pointB.y/KodemiViewConstant.scaleYFactor)
    public static let scalePointC = (x:KodemiViewConstant.pointC.x/KodemiViewConstant.scaleXFactor,
        y:KodemiViewConstant.pointC.y/KodemiViewConstant.scaleYFactor)
    public static let scalePointD =  (x:KodemiViewConstant.pointD.x/KodemiViewConstant.scaleXFactor,
        y:KodemiViewConstant.pointD.y/KodemiViewConstant.scaleYFactor)
    public static let scalePointE = (x:KodemiViewConstant.pointE.x/KodemiViewConstant.scaleXFactor,
        y:KodemiViewConstant.pointE.y/KodemiViewConstant.scaleYFactor)
    public static let scalePointF = (x:KodemiViewConstant.pointF.x/KodemiViewConstant.scaleXFactor,
        y:KodemiViewConstant.pointF.y/KodemiViewConstant.scaleYFactor)
    
}
