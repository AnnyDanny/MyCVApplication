//
//  FirstViewController.swift
//  MyCVApplication
//
//  Created by Ganna DANYLOVA on 5/2/19.
//  Copyright © 2019 Ganna DANYLOVA. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    let myArray: Array = ["Phone","E-mail","Skype"]
    let data: Array = ["+38050-200-84-33", "aniadanylova@gmail.com", "anndann2201"]
    

    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var summaryText: UILabel!
    @IBOutlet weak var GitButton: UIButton!
    @IBOutlet weak var LDButton: UIButton!
    @IBOutlet weak var imageView:  UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var position: UILabel!
    
    @IBAction func GitButtonPressed(_ sender: UIButton) {
        print("\nGo to Github\n")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "WebViewController") as! WebViewController
        controller.link = "https://github.com/AnnyDanny"
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction func LDButtonPressed(_ sender: UIButton) {
        print("\nGo to Linkedin\n")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "WebViewController") as! WebViewController
        controller.link = "https://www.linkedin.com/in/anndann/"
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        navigationController?.pushViewController(controller, animated: true)
    }
    
  override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        createButtons()
        setImage()
        addTableView()
        setSummarryText()
        addLabelsView1()
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        view.setNeedsUpdateConstraints()
    }
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
    }
    
    func addViews() {
        backgroundImage.image = UIImage(named: "space")
    }
    
    func setSummarryText() {
        
        summaryText.numberOfLines = 0
        summaryText.textAlignment = .center
        summaryText.text = "I'm a beginner Swift/iOS Developer looking for an internship in software development with a focus on mobile applications. I am very motivated, eager to learn and contribute all my effort to becomnig a first-class programmer. I have already developed a number of applications in Swift. I am constantly striving to perfect my skills and knowledge and it would be an honor to become a part of your team."
        summaryText.font = UIFont.systemFont(ofSize: 15)
    }
    
    func createButtons() {
        
        GitButton.backgroundColor = .green
        GitButton.setTitle("Git", for: .normal)
        GitButton.layer.cornerRadius = GitButton.frame.size.width / 2
        GitButton.layer.borderWidth = 1.5
        GitButton.backgroundColor = UIColor.blue
        GitButton.tintColor = UIColor.white
        
        LDButton.backgroundColor = .green
        LDButton.setTitle("in", for: .normal)
        LDButton.layer.cornerRadius = LDButton.frame.size.width / 2
        LDButton.layer.borderWidth = 1.5
        LDButton.backgroundColor = UIColor.blue
        LDButton.tintColor = UIColor.white
    }
    
    func setImage() {
        let imageName = "MyImage"
        let image = UIImage(named: imageName)
        imageView.layer.borderWidth = 3.0
        imageView.layer.borderColor = UIColor.lightGray.cgColor
        imageView.layer.cornerRadius = 50.0
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.image = image
        self.view.bringSubview(toFront: imageView)
    }
    
    func addTableView() {
        myTableView.dataSource = self
        myTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Num: \(indexPath.row)")
        print("Value: \(myArray[indexPath.row])")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "contactID", for: indexPath as IndexPath) as? ContactsTableViewCell
        cell?.label.text = myArray[indexPath.row]
        cell?.contact.text = data[indexPath.row]
        return cell!
    }
    
    func addLabelsView1() {
        name.text = "Danylova Anna"
        name.font = UIFont.preferredFont(forTextStyle: .footnote)
        name.textColor = .white
        name.font = UIFont.systemFont(ofSize: 30)
        
        position.text = "IOS/Swift Developer"
        position.font = UIFont.systemFont(ofSize: 20)
        position.textColor = .white
        
    }
}
