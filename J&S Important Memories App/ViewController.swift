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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        importantMemoryLabel.text = "Our important memories will load here!"
        
        importantMemoryButton.layer.cornerRadius = 4
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
