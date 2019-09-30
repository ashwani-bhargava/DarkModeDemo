//
//  Palette.swift
//  Dark Mode Demo
//
//  Created by Ashwani on 27/09/19.
//  Copyright © 2019 Ashwani. All rights reserved.
//

import Foundation
import UIKit


public protocol PaletteProtocol {
    var primary             : UIColor { get }
    var text               : UIColor { get }
    var background          : UIColor { get }
}

public struct Palette {
    public static var current: PaletteProtocol {
        return DemoPalette()
    }
}

private final class DemoPalette: PaletteProtocol {
    var primary: UIColor {
        get {
            return UIColor(named: "primary1") ?? #colorLiteral(red: 0.2823529412, green: 0.5058823529, blue: 1, alpha: 1)
        }
    }
    
    var text: UIColor {
        get {
            return UIColor(named: "text1") ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8700000048)
        }
    }
    
    var background: UIColor {
        get {
            return UIColor(named: "background1") ?? #colorLiteral(red: 0.1803921569, green: 0.1882352941, blue: 0.2039215686, alpha: 1)
        }
    }
}

private final class Demo2Palette: PaletteProtocol {
    var primary: UIColor {
        get {
            return UIColor(named: "primary2") ?? #colorLiteral(red: 0.9254901961, green: 0.9921568627, blue: 0.9882352941, alpha: 1)
        }
    }
    
    var text: UIColor {
        get {
            return UIColor(named: "text2") ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.6399999857)
        }
    }
    
    var background: UIColor {
        get {
            return UIColor(named: "background2") ?? #colorLiteral(red: 0.1450980392, green: 0.1529411765, blue: 0.1725490196, alpha: 1)
        }
    }
}
