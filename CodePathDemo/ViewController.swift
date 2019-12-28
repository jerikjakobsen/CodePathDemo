//
//  ViewController.swift
//  CodePathDemo
//
//  Created by Jenafer Morton on 12/23/19.
//  Copyright © 2019 John Jakobsen. All rights reserved.
//

import UIKit
import SDWebImage

class ViewController: UIViewController {

    @IBOutlet var TextLabel: UILabel!
    @IBOutlet var UserInput: UITextField!
    var backgroundColor: UIColor!
    var textColor: UIColor!
    var labelColor: UIColor!
    var labelFont: UIFont!
    @IBOutlet var slider: UISlider!
    @IBOutlet var imageView: UIImageView!
    var fonts = ["Rockwell","Papyrus","Times New Roman","Charter Roman","Gill Sans SemiBold","PingFang HK Regular","Snell Roundhand","Verdana","Symbol","Snell Roundhand"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        backgroundColor = view.backgroundColor
        textColor = TextLabel.textColor
        labelColor = TextLabel.backgroundColor
        labelFont = TextLabel.font
       
    }
    
    
    func generateRandomColor() -> UIColor {
      let hue : CGFloat = CGFloat(arc4random() % 256) / 256
      let saturation : CGFloat = CGFloat(arc4random() % 128) / 256 + 0.5
      let brightness : CGFloat = CGFloat(arc4random() % 128) / 256 + 0.5
            
      return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1)
    }

    @IBAction func DidTapButton(_ sender: Any) {
        TextLabel.textColor = generateRandomColor()
    }
    
    @IBAction func DidTapViewColor(_ sender: Any) {
        view.backgroundColor = generateRandomColor()
        imageView.image = nil
    }
    @IBAction func DidTapTextString(_ sender: Any) {
        if UserInput.text == "" {
        
        TextLabel.text = "GoodBye World!"
        }
        else {
            TextLabel.text = UserInput.text
            UserInput.text = ""
            view.endEditing(true)
        }
        
    }
    @IBAction func ViewReset(_ sender: Any) {
        TextLabel.text = "Hello World!"
        view.backgroundColor = backgroundColor
        TextLabel.textColor = textColor
        imageView.image = nil
        TextLabel.backgroundColor = labelColor
        TextLabel.font = labelFont
        
    }
    @IBAction func DidTapChangeBGImage(_ sender: Any) {
        let number = Int.random(in: 0 ..< 500)
        if let url = URL(string: "https://picsum.photos/id/" + String(number) + "/1135/2455") {
            imageView.sd_setImage(with: url)
        }
    }
    
    @IBAction func didTapLabelColorChange(_ sender: Any) {
        TextLabel.backgroundColor = generateRandomColor()
    }
    @IBAction func didTapFontChange(_ sender: Any) {
        let randomNum = Int.random(in: 0 ..< 10)
        TextLabel.font = UIFont(name: fonts[randomNum], size: 28)
    }
    @IBAction func fontSizeChanged(_ sender: Any) {
        TextLabel.font = UIFont(name: TextLabel.font.fontName, size: CGFloat(slider!.value))
    }
}

