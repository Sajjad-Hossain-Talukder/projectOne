//
//  ProjectViewController.swift
//  projectOne
//
//  Created by Xotech on 26/12/2023.
//

import UIKit

class ProjectViewController:
    UIViewController {
    
    var projects : [Projects] = [
        Projects(projectImage: "m1", projectTitle: "Louis Vitton Store"),
        Projects(projectImage: "m2", projectTitle: "Versace Vblgari"),
        Projects(projectImage: "m3" , projectTitle: "Watch your Time "),
        Projects(projectImage: "m1", projectTitle: "Louis Vitton Store"),
        Projects(projectImage: "m2", projectTitle: "Versace Vblgari"),
        Projects(projectImage: "m3" , projectTitle: "Watch your Time "),
        Projects(projectImage: "m1", projectTitle: "Louis Vitton Store"),
        Projects(projectImage: "m2", projectTitle: "Versace Vblgari"),
        Projects(projectImage: "m3" , projectTitle: "Watch your Time ")
    ]

    

    @IBOutlet weak var projectCollectionView: UICollectionView!
    
    @IBOutlet weak var createProject: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        createProject.layer.cornerRadius = 15
        
        //projectCollectionView.register(ProjectCollectionViewCell.self, forCellWithReuseIdentifier: "ProjectCollectionViewCell")
        projectCollectionView.delegate = self
        projectCollectionView.dataSource = self
        projectCollectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
        
        
    }
    
    @IBAction func toolsPressed(_ sender: UIButton) {
        dismiss(animated: true , completion: nil )
    }

}

extension ProjectViewController : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        print(projects.count)
        return projects.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProjectCollectionViewCell", for: indexPath ) as! ProjectCollectionViewCell
        
        print(indexPath.row)
        print(projects[indexPath.row].projectTitle)
        print(projects[indexPath.row].projectImage)
    
        cell.setup(projects[indexPath.row])
        return cell
    }
    
    
}

extension ProjectViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSizeMake(202.0, 202.0)
    }
}

extension ProjectViewController : UICollectionViewDelegate {
    
}


