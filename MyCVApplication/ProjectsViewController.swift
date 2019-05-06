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

var projectsArray = [Projects(title: "Photo Collection", description: """
Create photo collection and learned:
• how to use a collection view
• how to do a multithread on iOS
• how to create alerts
• how to use a scroll view.
""", photo: UIImage(named: "PhotoCollection")!), Projects(title: "MapKit", description: """
In this application I knew how Apple makes it possible to make it easy for you to manage your user’s location. I used:
TabBarController, MKMapView, CLLocationManager, MKAnnotationView.
""", photo: UIImage(named: "MapKit")!), Projects(title: "Weather", description: "In whis project i worked with Cocoapods and Install the ’RecastAI’ pod to be able to request and use the community Slackbot bot with the weather intention and the token.", photo: UIImage(named: "weather")!), Projects(title: "Connection places in map", description: """
Here my application contains these features :
    • Geolocating the mobile phone
    • Finding an address and displaying its location on a map
    • Displaying the route on the map if desired. With the choice of departure and destination.
""", photo: UIImage(named: "pathInMap")!), Projects(title: "Gestures", description: "In this project I created shapes and add some Gesture to this shapes", photo: UIImage(named: "Gestures")!), Projects(title: "API Tweeter", description: "In this project I learned to do HTTP requests to the Twitters’s API on iOS with the goal of creating a client application for Twitter. It will have to display tweets in a table view.", photo: UIImage(named: "APITweeter")!), Projects(title: "Swift Companion", description: "Now I am working with project in UNIT Factory. The aim of the projet is to build an application that will retrieve the information of 42 student, using the 42 API.", photo: UIImage(named: "SwiftCompanion")!)]



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
