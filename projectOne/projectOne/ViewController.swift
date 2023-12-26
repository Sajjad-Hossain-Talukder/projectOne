//
//  ViewController.swift
//  projectOne
//
//  Created by New Guest on 19/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftBar: UIView!
    @IBOutlet weak var rightBar: UIView!
    @IBOutlet weak var projectButton: UIButton!
    
    @IBOutlet weak var toolsButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func moreAction(_ sender: UIButton) {
        performSegue(withIdentifier: "gooo", sender: self)
    }
    
    
    @IBAction func actionProject(_ sender: UIButton) {
//        projectButton.setImage(UIImage(named: "xst"), for: .normal )
//        toolsButton.setImage(UIImage(named: "xri"), for: .normal)
//        rightBar.backgroundColor = UIColor(red: 1.00, green: 0.48, blue: 0.24, alpha: 1.00)
//        leftBar.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1.00)
    }
    
    @IBAction func actionTool(_ sender: UIButton) {
        performSegue(withIdentifier: "goToProject", sender: self)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gooo" {
            var secondVC = segue.destination as! SecondViewController
            if #available(iOS 15.0, *) {
                if let sheet = secondVC.sheetPresentationController{
                    let multiplier =  0.503348214285714 // 0.450893
                    let height = self.view.safeAreaLayoutGuide.layoutFrame.size.height
                    if #available(iOS 16.0, *) {
                        let fraction = UISheetPresentationController.Detent.custom { context in
                            // height is the view.frame.height of the view controller which presents this bottom sheet
                            height * multiplier
                        }
                        sheet.detents = [fraction]
                    } else {
                        // Fallback on earlier versions
                    }
                    
                    
                }
            } else {
                // Fallback on earlier versions
            }
            
        }
    }
    
    
    
}
