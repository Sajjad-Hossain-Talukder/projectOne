//
//  ProjectCollectionViewCell.swift
//  projectOne
//
//  Created by Xotech on 26/12/2023.
//

import UIKit

class ProjectCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var projectImage: UIImageView!
    @IBOutlet weak var projectTitle: UILabel!
    
    func setup(_ pro : Projects ){
        print(pro.projectImage, " is detected")
        
        projectImage?.image = UIImage(named: pro.projectImage)
        projectTitle?.text = pro.projectTitle
        
        
    }
}
