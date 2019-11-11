//
//  ViewController.swift
//  Assignment-2-App
//
//  Created by Kai-Ta Hsieh on 2019/11/11.
//  Copyright © 2019 Hsieh, Kai-Ta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    var currentTextIndex = 0
    var currentColorIndex = 0
    
    let texts = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus." ,
        "Contrary to popular belief, Lorem Ipsum is not simply random text." ,
        "Richard McClintock, a Latin professor at Hampden-Sydney College in " ,
        "looked up one of the more obscure Latin words, consectetur" ,
        "from a Lorem Ipsum passage, and going through the cites of the word" ,
        "This book is a treatise on the theory of ethics, very popular during the." ,
        "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.." ,
    ]
    
    let hexColors = [0xD55252, 0xE47312, 0xE3B04B, 0x6F9A8D, 0x293A80, 0x39375B, 0x9852F9]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        textLabel.text = getNextRandomText(from: texts)
        view.backgroundColor = getNextRandomColor(from: hexColors)
    }
    
    func getNextRandomText(from textArray: [String]) -> String {
        let oldIndex = currentTextIndex
        var newIndex = Int.random(in: 0 ..< textArray.count)
        while newIndex == oldIndex {
            newIndex = Int.random(in: 0 ..< textArray.count)
        }
        currentTextIndex = newIndex
        return textArray[newIndex]
    }
    
    func getNextRandomColor(from hexColorArray: [Int]) -> UIColor {
        let oldIndex = currentColorIndex
        var newIndex = Int.random(in: 0 ..< hexColorArray.count)
        while newIndex == oldIndex {
            newIndex = Int.random(in: 0 ..< hexColorArray.count)
        }
        currentColorIndex = newIndex
        return hexToUIColor(hex: hexColorArray[newIndex])
    }
    
    func hexToUIColor(hex: Int) -> UIColor {
        let hexRed = (hex >> 16) & 0xFF
        let hexGreen = (hex >> 8) & 0xFF
        let hexBlue = hex & 0xFF
        let r = CGFloat(hexRed) / 255.0
        let g = CGFloat(hexGreen) / 255.0
        let b = CGFloat(hexBlue) / 255.0
        return UIColor(red: r, green: g, blue: b, alpha: 1.0)
    }
    
}

