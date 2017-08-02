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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Initialize the info for the labels
        importantMemoryDateLabel.text = "\(memories.memories[0].month)-\(memories.memories[0].day)-\(memories.memories[0].year)"
        importantMemoryDescription.text = memories.memories[0].description
        importantMemoryLabel.text = memories.memories[0].whatIRemember
        // Styling for the button
        importantMemoryButton.layer.cornerRadius = 3
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showMemory() {
        importantMemoryDateLabel.text = "\(memories.memories[1].month)-\(memories.memories[1].day)-\(memories.memories[1].year)"
        importantMemoryDescription.text = memories.memories[1].description
        importantMemoryLabel.text = memories.memories[1].whatIRemember
    }

}
