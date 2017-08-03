//
//  ViewController.swift
//  J&S Important Memories App
//
//  Created by Jonathan Fernandes on 7/30/17.
//  Copyright © 2017 Jonathan Fernandes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var importantMemoryDateLabel: UILabel!
    @IBOutlet weak var importantMemoryDescription: UILabel!
    @IBOutlet weak var importantMemoryLabel: UILabel!
    @IBOutlet weak var importantMemoryButton: UIButton!
    let memories = MemoriesProvider()
    
    func setContentForLabels() {
        // Get a memory
        let currentMemory = memories.generateRandomMemory()
        // Assign all content
        importantMemoryDateLabel.text = currentMemory.date
        importantMemoryDescription.text = currentMemory.description
        importantMemoryLabel.text = currentMemory.whatIRemember
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Initialize the info for the labels
        setContentForLabels()
        // Styling for the button
        importantMemoryButton.layer.cornerRadius = 3
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showMemory() {
        setContentForLabels()
    }
}
