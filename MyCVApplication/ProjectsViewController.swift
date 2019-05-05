//
//  ProjectsViewController.swift
//  MyCVApplication
//
//  Created by MacBook on 05.05.2019.
//  Copyright © 2019 Ganna DANYLOVA. All rights reserved.
//

import UIKit

struct Projects {
    var title : String
    var description : String
    var photo : UIImage
    
    init(title: String, description: String, photo: UIImage) {
        self.title = title
        self.description = description
        self.photo = photo
    }
}

var projectsArray = [Projects(title: "Death Note", description: "Create note...", photo: UIImage(named: "DeathNote")!), Projects(title: "Photo Collection", description: "Create photo collection...", photo: UIImage(named: "PhotoCollection")!), Projects(title: "MapKit", description: "Create MapKit", photo: UIImage(named: "MapKit")!)]


class ProjectsViewController: UIViewController {

    @IBOutlet weak var projectNavigatorBar: UINavigationBar!
    
    @IBOutlet weak var projectDescription: UILabel!
    
    @IBOutlet weak var projectImage: UIImageView!
    
    
    var projectIndex : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        projectNavigatorBar.topItem?.title = projectsArray[projectIndex].title
        projectDescription.text = projectsArray[projectIndex].description
        projectImage.image = projectsArray[projectIndex].photo
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
