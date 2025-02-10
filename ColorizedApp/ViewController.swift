//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Danil Chekantsev on 10.02.2025.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IB Outlets
    
    @IBOutlet var viewStack: UIView!
    @IBOutlet var labelRedColor: UILabel!
    @IBOutlet var labelGreenColor: UILabel!
    @IBOutlet var labelBlueColor: UILabel!
    @IBOutlet var labelNumberRed: UILabel!
    @IBOutlet var labelNumberGreen: UILabel!
    @IBOutlet var labelNumberBlue: UILabel!
    @IBOutlet var sliderRedColor: UISlider!
    @IBOutlet var sliderGreenColor: UISlider!
    @IBOutlet var sliderBlueColor: UISlider!
    
    // MARK: - View Life Cycle.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        updateColorLabels()
        updateSliders()
        viewStack.layer.cornerRadius = 25
    }
    
    // MARK: - IB Actions.
    
    @IBAction func sliderRedColorChange() {
        updateBackgroundColor()
        labelNumberRed.text = String(format: "%.2f", sliderRedColor.value)
    }
    
    @IBAction func sliderGreenColorChange() {
        updateBackgroundColor()
        labelNumberGreen.text = String(format: "%.2f", sliderGreenColor.value)
    }
    
    @IBAction func sliderBlueColorChange() {
        updateBackgroundColor()
        labelNumberBlue.text = String(format: "%.2f", sliderBlueColor.value)
    }
    
    // MARK: - Private Methods.
    
    private func updateBackgroundColor() {
        let redColor = CGFloat(sliderRedColor.value)
        let greenColor = CGFloat(sliderGreenColor.value)
        let blueColor = CGFloat(sliderBlueColor.value)
        
        let newColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1)
        
        viewStack.backgroundColor = newColor
    }
    
    private func updateNumbersLabel() {
        labelNumberRed.text = "1"
        labelNumberGreen.text = "1"
        labelNumberBlue.text = "1"
    }
    
    private func updateColorLabels() {
        labelRedColor.text = "Red"
        labelGreenColor.text = "Green"
        labelBlueColor.text = "Blue"
    }

    private func updateSliders() {
        sliderRedColor.value = 0
        sliderGreenColor.value = 0
        sliderBlueColor.value = 0
        
        sliderRedColor.minimumValue = 0
        sliderGreenColor.minimumValue = 0
        sliderBlueColor.minimumValue = 0
        
        sliderRedColor.maximumValue = 1
        sliderGreenColor.maximumValue = 1
        sliderBlueColor.maximumValue = 1
        
        sliderRedColor.minimumTrackTintColor = .red
        sliderGreenColor.minimumTrackTintColor = .green
        sliderBlueColor.minimumTrackTintColor = .blue
    }
    
}

