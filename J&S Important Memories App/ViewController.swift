//
//  ViewController.swift
//  J&S Important Memories App
//
//  Created by Jonathan Fernandes on 7/30/17.
//  Copyright © 2017 Jonathan Fernandes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var importantMemoryLabel: UILabel!
    @IBOutlet weak var importantMemoryButton: UIButton!
    
    let memories: [String] = [
        "August 1, 2014 we got married",
        "August 1, 2013 we started dating"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        importantMemoryLabel.text = memories[0]
        
        importantMemoryButton.layer.cornerRadius = 3
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showMemory() {
        importantMemoryLabel.text = memories[1]
    }

}
