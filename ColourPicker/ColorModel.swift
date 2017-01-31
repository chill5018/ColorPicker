//
//  ColorModel.swift
//  ColourPicker
//
//  Created by Colin Hill on 1/31/17.
//  Copyright © 2017 Colin Hill. All rights reserved.
//

import Foundation // This is Default
import UIKit      // Add this

// Model for Colors

// I give you R G B, you return a color 

class ColorModel
{
    var valRed:   Float = 0
    var valGreen: Float = 0
    var valBlue:  Float = 0
    var valAplha: Float = 1.0
    
    // Constructor --> Initializer 
    
    // We want our Color Model to be initialized with all 3 colors
    // Java versus Swift --> self.valRed vs this.valRed (Java)
    
    init(valRed: Float, valGreen: Float, valBlue: Float) {
        self.valRed   = valRed
        self.valGreen = valGreen
        self.valBlue  = valBlue
    }
    
    
    // Returns a UIColor
    func getColor() -> UIColor {
       
        let newColor = UIColor(
            red:   CGFloat(valRed/255.0),
            green: CGFloat(valGreen/255.0),
            blue:  CGFloat(valBlue/255.0),
            alpha: 1.0)
        
        return newColor
    }
    
    
    // TODO: Convert to HEX function 
    
    // TODO: Inverse Color Function 
    
    

}
