//
//  ViewController.swift
//  projectOne
//
//  Created by New Guest on 19/12/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topBanner: UIView!
    
    @IBOutlet weak var screenRecordingSpacing: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screenRecordingSpacing.addCharacterSpacing(kernValue: 0.1)
    

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

