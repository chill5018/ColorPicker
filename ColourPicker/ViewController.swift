//
//  ViewController.swift
//  ColourPicker
//
//  Created by Colin Hill on 1/24/17.
//  Copyright © 2017 Colin Hill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    
    @IBOutlet weak var labelRed: UILabel!
    @IBOutlet weak var labelGreen: UILabel!
    @IBOutlet weak var labelBlue: UILabel!
    
    @IBOutlet weak var viewColorPicker: UIView!
    
    // We now need a Colour Model   `?` makes it an Optional...
    var colorModel:ColorModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Create our instance of the color model when the view loads 
        colorModel = ColorModel(valRed: 0.0, valGreen: 0.0, valBlue: 0.0) // Default to black
        
        labelGreen.text = "0"
        labelRed.text   = "0"
        labelBlue.text  = "0"
        
        viewColorPicker.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        
        /* 
         You can load the saved data from the user, so that the app loads with the users last set color 
        */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // This function is called whenever the user changes the value of the slider
    @IBAction func redValueChanged(_ sender: UISlider) {
        labelRed.text = String(format: "%.0f", sender.value)
        updateColorPanel()
    }
    
    @IBAction func greenValueChanged(_ sender: UISlider) {
        labelGreen.text = String(format: "%.0f", sender.value)
        updateColorPanel()
    }
    

    @IBAction func blueValueChanged(_ sender: UISlider) {
        labelBlue.text = String(format: "%.0f", sender.value)
        updateColorPanel()
    }
    
    func updateColorPanel() {
        colorModel?.valRed   = self.sliderRed.value
        colorModel?.valGreen = self.sliderGreen.value
        colorModel?.valBlue  = self.sliderBlue.value
        

        viewColorPicker.backgroundColor = colorModel?.getColor()
    }
}

