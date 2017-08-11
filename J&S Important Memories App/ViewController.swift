//
//  ViewController.swift
//  J&S Important Memories App
//
//  Created by Jonathan Fernandes on 7/30/17.
//  Copyright © 2017 Jonathan Fernandes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Call all outlets to view controller first
    @IBOutlet weak var importantMemoryDateLabel: UILabel!
    @IBOutlet weak var importantMemoryDescription: UILabel!
    @IBOutlet weak var importantMemoryLabel: UILabel!
    @IBOutlet weak var importantMemoryButton: UIButton!
    
    // Create instances of the memories model and colors model
    let memories = MemoriesProvider()
    let colors = ColorProvider()
    
    // Handles changing content all at once
    func setContentForLabels() {
        let currentMemory = memories.generateRandomMemory()
        importantMemoryDateLabel.text = currentMemory.date
        importantMemoryDescription.text = currentMemory.description
        importantMemoryLabel.text = currentMemory.whatIRemember
    }
    
    // Handles changing color scheme for all parts of the app
    func setColorForLabels() {
        let currentColorWheel = colors.generateRandomColor()
        importantMemoryDateLabel.backgroundColor = currentColorWheel.headerColor
        view.backgroundColor = currentColorWheel.backgroundColor
        importantMemoryButton.backgroundColor = currentColorWheel.buttonColor
        importantMemoryButton.layer.borderColor = currentColorWheel.borderColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Intialize content and colors
        setContentForLabels()
        setColorForLabels()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // When action is called, randomize the next memory and color to repopulate view
    @IBAction func showMemory() {
        setContentForLabels()
        setColorForLabels()
    }
}
