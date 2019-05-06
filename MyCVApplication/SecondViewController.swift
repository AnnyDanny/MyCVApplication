//
//  SecondViewController.swift
//  MyCVApplication
//
//  Created by Ganna DANYLOVA on 5/2/19.
//  Copyright © 2019 Ganna DANYLOVA. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var imageArray = [String]()
    
    let items = ["WORK EXPERIENCE", "EDUCATION", "SKILLS", "HOBBIES"]
    let descriptions = ["""
Student of UNIT Factory (IOS/Swift development) 2017-present.
    I have been actively learning Swift programming language. Now I finished the intensive-course Swift which was in UNIT factory. And I am working on creating my own application with Swift.
During IOS development learning I worked with such tools and technologies:
0. I had experience with Autolayout, UIKit, UITableView, Foundation, UICollectionView
1. Also i worked with API Tweeter and API 42 school.
2. I learned and used MapKit.
3. Also i discovered Gestures.
4. I used different frameworks and worked with Cooapods.


At the beginning of my studies in UNIT Factory I studied the C language and have validated such projects:
0. Implementation of the library of C libft.
1. Program Get_Next_Line that reads from a file/std in line by line.
2. Implementation of library function Printf.
3. Created some algorithmic projects: Filler and Lem_in.
4. Participation in the command project Corewar. In this project, our command created a virtual “arena” in which programs will fight against one another (the “Champions”).
Also in UNIT factory i passed intensive course PHP and have basic knowledge of HTML/CSS.
""", """
UNIT factory (2017-present) "Software engineering Mobile development"
National Aviation University (2009-2015) "Geodesy, cartography, land management"
""", """
Development tools: LLDB / GDB
Operating system: Linux
Command shell: Bash
Software platform: Docker
Version control system: Git
IDE: Visual Studio and Xcode.
""", """
Sport, Martial arts, nature, computer science, traveling.
"""]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageArray = ["computer", "study", "skill", "hobibies"]
        collectionView.delegate = self
        collectionView.dataSource = self
        createBackground()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let Cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath as IndexPath) as! MyCollectionViewCell

        Cell.ImageViewCollection.image = UIImage(named: imageArray[indexPath.row])
        Cell.labelTitle.text = items[indexPath.item]
        
        Cell.textViewCollection.text = descriptions[indexPath.row]
        Cell.textViewCollection.textContainer.maximumNumberOfLines = 100
        
        let backButton = Cell.viewWithTag(3) as! UIButton
        backButton.isHidden = true
        
        return Cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        
        cell?.superview?.bringSubview(toFront: cell!)
        UIView.animate(withDuration: 0.5, animations: ({
            cell?.frame = collectionView.bounds
            collectionView.isScrollEnabled = false
            cell?.backgroundColor = #colorLiteral(red: 0.6080523155, green: 0.5235180339, blue: 1, alpha: 1)
            let backButton = cell?.viewWithTag(3) as! UIButton
            backButton.isHidden = false
            backButton.addTarget(self, action: #selector(self.backButtonAction), for: UIControlEvents.touchUpInside)
            
        }), completion: nil)
        print(indexPath.item)
    }
    
    @objc func backButtonAction() {
        guard let indexPath = collectionView?.indexPathsForSelectedItems else {
            return
        }
        collectionView?.isSpringLoaded = true
        collectionView?.isScrollEnabled = true
        collectionView?.reloadItems(at: indexPath)
    }
    
    func createBackground() {
        let bgImage = UIImageView();
        bgImage.image = UIImage(named: "space");
        bgImage.contentMode = .scaleToFill
        bgImage.alpha = 0.7
        self.collectionView?.backgroundView = bgImage
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "space")
        backgroundImage.contentMode = UIViewContentMode.scaleAspectFill
        backgroundImage.alpha = 0.7
        self.view.insertSubview(backgroundImage, at: 0)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
