//
//  colorProvider.swift
//  J&S Important Memories App
//
//  Created by Jonathan Fernandes on 8/3/17.
//  Copyright © 2017 Jonathan Fernandes. All rights reserved.
//

import UIKit
import GameKit

struct ColorPackage {
    let headerColor: UIColor
    let backgroundColor: UIColor
    let buttonColor: UIColor
    let borderColor: UIColor
    
    init(headerR hr: Float, headerG hg: Float, headerB hb: Float, backgroundR br: Float, backgroundG bg: Float, backgroundB bb: Float, buttonR bur: Float, buttonG bug: Float, buttonB bub: Float, borderR bor: Float, borderG bog: Float, borderB bob: Float) {
        self.headerColor = UIColor(red: CGFloat(hr/255.0), green: CGFloat(hg/255.0), blue: CGFloat(hb/255.0), alpha: 1.0)
        self.backgroundColor = UIColor(red: CGFloat(br/255.0), green: CGFloat(bg/255.0), blue: CGFloat(bb/255.0), alpha: 1.0)
        self.buttonColor = UIColor(red: CGFloat(bur/255.0), green: CGFloat(bug/255.0), blue: CGFloat(bub/255.0), alpha: 1.0)
        self.borderColor = UIColor(red: CGFloat(bor/255.0), green: CGFloat(bog/255.0), blue: CGFloat(bob/255.0), alpha: 1.0)
    }
}

struct ColorProvider {
    let colors: [ColorPackage] = [
        ColorPackage(headerR: 2, headerG: 136, headerB: 209, backgroundR: 3, backgroundG: 169, backgroundB: 244, buttonR: 255, buttonG: 82, buttonB: 82, borderR: 217, borderG: 44, borderB: 44),
        ColorPackage(headerR: 56, headerG: 142, headerB: 60, backgroundR: 76, backgroundG: 175, backgroundB: 80, buttonR: 255, buttonG: 193, buttonB: 7, borderR: 217, borderG: 155, borderB: 0),
        ColorPackage(headerR: 81, headerG: 45, headerB: 168, backgroundR: 103, backgroundG: 58, backgroundB: 183, buttonR: 158, buttonG: 158, buttonB: 158, borderR: 120, borderG: 120, borderB: 120),
        ColorPackage(headerR: 0, headerG: 121, headerB: 107, backgroundR: 0, backgroundG: 150, backgroundB: 136, buttonR: 121, buttonG: 85, buttonB: 72, borderR: 83, borderG: 47, borderB: 34)
    ]
    
    func generateRandomColor() -> ColorPackage {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: colors.count)
        return colors[randomNumber]
    }
}
