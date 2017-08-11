//
//  colorProvider.swift
//  J&S Important Memories App
//
//  Created by Jonathan Fernandes on 8/3/17.
//  Copyright © 2017 Jonathan Fernandes. All rights reserved.
//

import UIKit
import GameKit

// Enum to model a instance of a color that can be converted to UIColor or CGColor as needed
enum ColorComponent {
    case rgb(red: Float, green: Float, blue: Float, alpha: Float)
    case hsb(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
    
    func toUIColor() -> UIColor {
        switch self {
        case .rgb(let red, let green, let blue, let alpha):
            return UIColor(colorLiteralRed: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
        case .hsb(let hue, let saturation, let brightness, let alpha):
            return UIColor(hue: hue/360.0, saturation: saturation/100.0, brightness: brightness/100.0, alpha: alpha)
        }
    }
    
    func toCGColor() -> CGColor {
        switch self {
        case .rgb(let red, let green, let blue, let alpha):
            return UIColor(colorLiteralRed: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha).cgColor
        case .hsb(let hue, let saturation, let brightness, let alpha):
            return UIColor(hue: hue/360.0, saturation: saturation/100.0, brightness: brightness/100.0, alpha: alpha).cgColor
        }
    }
}

// Since we are changing four colors at once, a struct to model a "package" of colors
struct ColorPackage {
    let headerColor: UIColor
    let backgroundColor: UIColor
    let buttonColor: UIColor
    let borderColor: CGColor
    
    // each color initialized with ColorComponent enum we created
    init(headerColor: ColorComponent, backgroundColor: ColorComponent, buttonColor: ColorComponent, borderColor: ColorComponent) {
        self.headerColor = headerColor.toUIColor()
        self.backgroundColor = backgroundColor.toUIColor()
        self.buttonColor = buttonColor.toUIColor()
        self.borderColor = borderColor.toCGColor()
    }
}

// The following struct will be the instance we call in our controller to handle the randomizing of colors
struct ColorProvider {
    let colors: [ColorPackage] = [
        // Analogous Green with Green/Blue support and accent
        ColorPackage(
            headerColor: .rgb(red: 56.0, green: 142.0, blue: 60.0, alpha: 1.0),
            backgroundColor: .rgb(red: 76.0, green: 175.0, blue: 80.0, alpha: 1.0),
            buttonColor: .rgb(red: 68.0, green: 138.0, blue: 255.0, alpha: 1.0),
            borderColor: .rgb(red: 17.0, green: 87.0, blue: 204.0, alpha: 1.0)
        ),
        // Analogous Blue with Blue/Purple support and accent
        ColorPackage(
            headerColor: .rgb(red: 25.0, green: 118.0, blue: 210.0, alpha: 1.0),
            backgroundColor: .rgb(red: 33.0, green: 150.0, blue: 243.0, alpha: 1.0),
            buttonColor: .rgb(red: 124.0, green: 77.0, blue: 255.0, alpha: 1.0),
            borderColor: .rgb(red: 73.0, green: 26.0, blue: 204.0, alpha: 1.0)
        ),
        // Analogous Orange with Orange/Yellow support and accent
        ColorPackage(
            headerColor: .rgb(red: 245.0, green: 124.0, blue: 0.0, alpha: 1.0),
            backgroundColor: .rgb(red: 255.0, green: 152.0, blue: 0.0, alpha: 1.0),
            buttonColor: .rgb(red: 255.0, green: 235.0, blue: 59.0, alpha: 1.0),
            borderColor: .rgb(red: 204.0, green: 184.0, blue: 8.0, alpha: 1.0)
        ),
        // Primary Red and Green compliment
        ColorPackage(
            headerColor: .rgb(red: 211.0, green: 47.0, blue: 47.0, alpha: 1.0),
            backgroundColor: .rgb(red: 244.0, green: 67.0, blue: 54.0, alpha: 1.0),
            buttonColor: .rgb(red: 76.0, green: 175.0, blue: 80.0, alpha: 1.0),
            borderColor: .rgb(red: 25.0, green: 124.0, blue: 29.0, alpha: 1.0)
        ),
        // Blue and Amber compliment
        ColorPackage(
            headerColor: .rgb(red: 48.0, green: 63.0, blue: 159.0, alpha: 1.0),
            backgroundColor: .rgb(red: 63.0, green: 81.0, blue: 181.0, alpha: 1.0),
            buttonColor: .rgb(red: 255.0, green: 193.0, blue: 7.0, alpha: 1.0),
            borderColor: .rgb(red: 204.0, green: 142.0, blue: 0.0, alpha: 1.0)
        ),
        // Pink and Light Green compliment
        ColorPackage(
            headerColor: ColorComponent.rgb(red: 194.0, green: 24.0, blue: 91.0, alpha: 1.0),
            backgroundColor: ColorComponent.rgb(red: 223.0, green: 30.0, blue: 99.0, alpha: 1.0),
            buttonColor: ColorComponent.rgb(red: 139.0, green: 195.0, blue: 74.0, alpha: 1.0),
            borderColor: ColorComponent.rgb(red: 88.0, green: 144.0, blue: 23.0, alpha: 1.0)
        ),
        // Orange and Light Blue compliment
        ColorPackage(
            headerColor: ColorComponent.rgb(red: 245.0, green: 124.0, blue: 0.0, alpha: 1.0),
            backgroundColor: ColorComponent.rgb(red: 255.0, green: 152.0, blue: 0.0, alpha: 1.0),
            buttonColor: ColorComponent.rgb(red: 3.0, green: 169.0, blue: 244.0, alpha: 1.0),
            borderColor: ColorComponent.rgb(red: 0.0, green: 118.0, blue: 193.0, alpha: 1.0)
        )
    ]
    
    func generateRandomColor() -> ColorPackage {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: colors.count)
        return colors[randomNumber]
    }
}
