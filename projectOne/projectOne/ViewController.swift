//
//  ViewController.swift
//  projectOne
//
//  Created by New Guest on 19/12/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var banner: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        banner.layer.cornerRadius = 25
    

    }
    
  


}


extension UILabel {
    
    // adding space between each characters
    func addCharacterSpacing(kernValue: Double) {
        if let labelText = text, labelText.isEmpty == false {
            let attributedString = NSMutableAttributedString(string: labelText)
            attributedString.addAttribute(.kern,
                                          value: kernValue,
                                          range: NSRange(location: 0, length: attributedString.length - 1))
            attributedText = attributedString
        }
    }
}

