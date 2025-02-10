//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Danil Chekantsev on 10.02.2025.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IB Outlets
    
    @IBOutlet var labelRedColor: UILabel!
    @IBOutlet var labelGreenColor: UILabel!
    @IBOutlet var labelBlueColor: UILabel!
    @IBOutlet var sliderRedColor: UISlider!
    @IBOutlet var sliderGreenColor: UISlider!
    @IBOutlet var sliderBlueColor: UISlider!
    
    // MARK: - View Life Cycle.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateColorLabels()
        updateSliders()
    }
    
    // MARK: - IB Actions.
    
    @IBAction func sliderRedColorChange() {
        let redValue = sliderRedColor.value
        let newColor = UIColor(red: CGFloat(redValue), green: 0, blue: 0, alpha: 1)
        view.backgroundColor = newColor
    }
    
    @IBAction func sliderGreenColorChange() {
        let greenValue = sliderGreenColor.value
        let newColor = UIColor(red: 0, green: CGFloat(greenValue), blue: 0, alpha: 1)
        view.backgroundColor = newColor
    }
    
    @IBAction func sliderBlueColorChange() {
        let blueValue = sliderBlueColor.value
        let newColor = UIColor(red: 0, green: 0, blue: CGFloat(blueValue), alpha: 1)
        view.backgroundColor = newColor
    }
    
    // MARK: - Private Methods.
    
    private func updateColorLabels() {
        labelRedColor.text = "Red"
        labelGreenColor.text = "Green"
        labelBlueColor.text = "Blue"
    }

    private func updateSliders() {
        sliderRedColor.value = 1
        sliderGreenColor.value = 1
        sliderBlueColor.value = 1
        
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

