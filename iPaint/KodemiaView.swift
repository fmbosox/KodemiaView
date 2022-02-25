//
//  KodemiaView.swift
//  iPaint
//
//  Created by Felipe Montoya on 2/24/22.
//

import Foundation
import UIKit

@IBDesignable
class KodemiaView: UIView {
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setNeedsDisplay()
    }
    
    @IBInspectable
    public var lineColor: UIColor = .black {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable
    public var lineWidth: CGFloat = 7.0 {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
   
    override func draw(_ rect: CGRect) {
        //Call super.draw
        //Create path object
        //Set attributes
        //Set starting points
        //Define path
        //Set stroke or fill colors.
        //*Get context and save state
        //*Position the shape
        //Render
        //*Restore graphic context
        
        //Call super.draw
        super.draw(rect)
        //Create path object
        let path = UIBezierPath()
        //Set attributes
        path.lineWidth = lineWidth
        let factorX = rect.width * 0.90
        let factorY = rect.height * 0.90
        
        //Set starting points
        path.move(to: CGPoint(
            x:KodemiViewConstant.scalePointA.x * factorX,
            y:KodemiViewConstant.scalePointA.y * factorY
        ))
        //Define path
        path.addLine(to: CGPoint(
            x:KodemiViewConstant.scalePointB.x * factorX,
            y:KodemiViewConstant.scalePointB.y * factorY
        ))
        path.addLine(to: CGPoint(
            x:KodemiViewConstant.scalePointC.x * factorX ,
            y:KodemiViewConstant.scalePointC.y * factorY
        ))
        path.addLine(to: CGPoint(
            x:KodemiViewConstant.scalePointD.x * factorX,
            y:KodemiViewConstant.scalePointD.y * factorY
        ))
        path.addLine(to: CGPoint(
            x:KodemiViewConstant.scalePointE.x * factorX,
            y:KodemiViewConstant.scalePointE.y * factorY
        ))
        path.addLine(to: CGPoint(
            x:KodemiViewConstant.scalePointF.x * factorX,
            y:KodemiViewConstant.scalePointF.y * factorY
        ))
        
        //Set stroke or fill colors.
         lineColor.setStroke()
        //Render
        
        //*Get context and save state
        if let context = UIGraphicsGetCurrentContext() {
            context.saveGState()
            //*Position the shape
            context.translateBy(x: rect.width * 0.05 , y: rect.height * 0.05)
            //Render
            path.stroke()
            
            //*Restore graphic context
            context.restoreGState()
        }
        
    
        
    }
    
}
