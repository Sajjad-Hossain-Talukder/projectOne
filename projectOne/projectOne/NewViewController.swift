//
//  NewViewController.swift
//  projectOne
//
//  Created by New Guest on 21/12/23.
//

import UIKit

class NewViewController: UIViewController {

    @IBOutlet weak var titleEdit: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleEdit.textAlignment = .center
        titleEdit.baselineAdjustment = .alignCenters
        titleEdit.numberOfLines = 0
        titleEdit.adjustsFontSizeToFitWidth = true

     
    }
    

}
