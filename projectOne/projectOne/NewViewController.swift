//
//  NewViewController.swift
//  projectOne
//
//  Created by New Guest on 21/12/23.
//

import UIKit

class NewViewController: UIViewController {
        
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func takeAction(_ sender: UIButton) {
        print("ins")
        performSegue(withIdentifier: "gooo", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "gooo" {
               var secondVC = segue.destination as! SecondViewController
               if #available(iOS 15.0, *) {
                   if let sheet = secondVC.sheetPresentationController{
                       let multiplier =  0.6 // 0.450893
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


