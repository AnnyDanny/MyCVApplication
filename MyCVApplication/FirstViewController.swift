//
//  FirstViewController.swift
//  MyCVApplication
//
//  Created by Ganna DANYLOVA on 5/2/19.
//  Copyright © 2019 Ganna DANYLOVA. All rights reserved.
//


//var view1 = UIView()
//var image1 = UIImageView()
//image1.image = UIImage(named: "taxi")
//view1.frame = CGRect(x: 10, y: 10, width: 20, height: 20)
//view1.addSubview(image1)
//view.addSubview(view1)

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    let myArray: Array = ["Phone","E-mail","Skype"]
    let data: Array = ["+38050-200-84-33", "aniadanylova@gmail.com", "anndann2201"]
    var myTableView: UITableView!
    

//    var myTableView = UITableView()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.myTableView = UITableView(frame: view.bounds, style: .plain)
//        self.myTableView.delegate = self
//        view.addSubview(myTableView)
//        navigationItem.titleView = UIImageView(image: UIImage(named: "MyImage"))
//        setImage()
//        setGradient()
        addViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    label.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
//    label.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
//    label.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
//    label.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
    
    func addViews() {
        let view1 = UIView()
        let view2 = UIView()
        let view3 = UIView()
        view1.frame = CGRect(x: 0, y: 20, width: view.frame.size.width, height: 250)
//        view1.backgroundColor = .yellow
        view2.frame = CGRect(x: 0, y: 250, width: view.frame.size.width, height: 150)
        view2.backgroundColor = .white
        view3.frame = CGRect(x: 0, y: 380, width: view.frame.size.width, height: 400)
        view3.backgroundColor = .yellow
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "space")
        backgroundImage.contentMode = UIViewContentMode.scaleAspectFill
        view1.insertSubview(backgroundImage, at: 0)
        
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.frame = view1.frame
//        gradientLayer.colors = [UIColor(red: 0/255, green: 147/255, blue: 255/255, alpha: 1.0).cgColor, UIColor(red: 162/255, green: 134/255, blue: 255/255, alpha: 1.0).cgColor]
//        gradientLayer.locations = [0.0, 1.0]
//        gradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
//        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.0)
//        view1.layer.addSublayer(gradientLayer)
        
        view.addSubview(view1)
        view.addSubview(view3)
        setImage(view1: view1)
        addLabelsView1(view1: view1)
        createButtons(view1: view1)
        setSummarryText(view2: view2)
        addTableView(view3: view3)

//        setContscts(view3: view2)
    }
    
    func setSummarryText(view2: UIView) {
        let summaryText = UILabel(frame: CGRect(x: 3, y: 0, width: view.frame.size.width, height: 300))
        summaryText.numberOfLines = 0
        //        summaryText.center = CGPoint(x: 5, y: 10)
                summaryText.textAlignment = .center
        summaryText.text = "I'm a beginner Swift/iOS Developer looking for an internship in software development with a focus on mobile applications. I am very motivated, eager to learn and contribute all my effort to becomnig a first-class programmer. I have already developed a number of applications in Swift. I am constantly striving to perfect my skills and knowledge and it would be an honor to become a part of your team."
        summaryText.font = UIFont.systemFont(ofSize: 15)
        summaryText.frame.size.height = 150
        summaryText.frame.size.width = 400
//        summaryText.layer.borderWidth = 1.0
//        summaryText.layer.borderColor = UIColor.blue.cgColor
//        summaryText.layer.borderColor = [UIColor glBlendColor];.CGColor;
//        summaryText.layer.borderWidth = 3.0;
        //        summaryText.contentVerticalAlignment = UIControlContentVerticalAlignment.top
        //        summaryText.sizeToFit()
        //        summaryText.topAnchor.constraint(equalTo: view2.topAnchor).isActive = true
        //        summaryText.bottomAnchor.constraint(equalTo: view2.bottomAnchor).isActive = true
        //        summaryText.leadingAnchor.constraint(equalTo: view2.leadingAnchor).isActive = true
        //        summaryText.trailingAnchor.constraint(equalTo: view2.trailingAnchor).isActive = true
        view2.addSubview(summaryText)
        view.addSubview(view2)
    }
    
    func createButtons(view1: UIView) {
        let GitButton = UIButton(frame: CGRect(x: 135, y: 170, width: 40, height: 40))
        let LDButton = UIButton(frame: CGRect(x: 235, y: 170, width: 40, height: 40))
        GitButton.backgroundColor = .green
        GitButton.setTitle("Git", for: .normal)
        GitButton.addTarget(self, action: #selector(gitButtonAction), for: .touchUpInside)
        GitButton.layer.cornerRadius = 20.0
        GitButton.layer.borderWidth = 1.5
        GitButton.backgroundColor = UIColor.blue
        GitButton.tintColor = UIColor.white
        view1.addSubview(GitButton)
        
        LDButton.backgroundColor = .green
        LDButton.setTitle("in", for: .normal)
        LDButton.addTarget(self, action: #selector(LDButtonAction), for: .touchUpInside)
        LDButton.layer.cornerRadius = 20.0
        LDButton.layer.borderWidth = 1.5
        LDButton.backgroundColor = UIColor.blue
        LDButton.tintColor = UIColor.white
        view1.addSubview(LDButton)
    }
    
    @objc func gitButtonAction(sender: UIButton!) {
        print("git Button tapped")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "WebViewController") as! WebViewController
        controller.link = "https://github.com/AnnyDanny"
        navigationController?.pushViewController(controller, animated: true)
    }
    
    @objc func LDButtonAction(sender: UIButton!) {
        print("LD Button tapped")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "WebViewController") as! WebViewController
        controller.link = "https://www.linkedin.com/in/anndann/"
        navigationController?.pushViewController(controller, animated: true)
    }
    
    func setImage(view1: UIView) {
        let imageName = "MyImage"
        let image = UIImage(named: imageName)
        let imageView  = UIImageView(image: image!)
        imageView.frame = CGRect(x: 20, y: 70, width: 100, height: 100)
        imageView.layer.borderWidth = 3.0
        imageView.layer.borderColor = UIColor.lightGray.cgColor
        imageView.layer.cornerRadius = 50.0
        imageView.clipsToBounds = true
//        imageView.center = self.view.center
        imageView.contentMode = .scaleAspectFill
        self.view.bringSubview(toFront: imageView)
        //        let xPostion:CGFloat = 50
//        let yPostion:CGFloat = 200
//        let buttonWidth:CGFloat = 200
//        let buttonHeight:CGFloat = 200
//
//        imageView.frame = CGRect(x: xPostion, y: yPostion, width: buttonWidth, height: buttonHeight)
        view1.addSubview(imageView)
    }
    
    func setGradient() {
        let gradientLayer = CAGradientLayer()
                gradientLayer.frame = self.view.frame
                gradientLayer.colors = [UIColor(red: 0/255, green: 147/255, blue: 255/255, alpha: 1.0).cgColor, UIColor(red: 162/255, green: 134/255, blue: 255/255, alpha: 1.0).cgColor]
                gradientLayer.locations = [0.0, 1.0]
                gradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
                gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.0)
                self.view.layer.addSublayer(gradientLayer)

    }
    
    func addTableView(view3: UIView) {
        let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
        
        myTableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        myTableView.dataSource = self
        myTableView.delegate = self
        let name = UILabel(frame: CGRect(x: 150, y: 60, width: 200, height: 100))
        name.text = "ggggg"
        view3.addSubview(name)
        view3.addSubview(myTableView)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Num: \(indexPath.row)")
        print("Value: \(myArray[indexPath.row])")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
        cell.textLabel!.text = myArray[indexPath.row]
        var label = UILabel(frame: CGRect(x: 180.0, y: 14.0, width: 200.0, height: 30.0))
        label.text = data[indexPath.row]
        label.tag = indexPath.row
        cell.contentView.addSubview(label)
        return cell
    }
    
    
    func addLabelsView1(view1: UIView) {
        //        let popup = UIView(frame: CGRect(x: 0, y: 0, width: 700, height: 150))
        
        let name = UILabel(frame: CGRect(x: 150, y: 60, width: 200, height: 100))
        name.text = "Danylova Anna"
        name.font = UIFont.preferredFont(forTextStyle: .footnote)
        name.textColor = .blue
        //        popup.backgroundColor = UIColor.lightGray
        name.font = UIFont.systemFont(ofSize: 30)
        // show on screen
        //        self.view.addSubview(popup)
        view.addSubview(name)
        let position = UILabel(frame: CGRect(x: 200, y: 80, width: 200, height: 100))
        position.text = "IOS/Swift Developer"
        position.font = UIFont.systemFont(ofSize: 20)
        position.textColor = .blue
        
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .blue
        UIView.animate(withDuration: 5) {
            label.frame = CGRect(x: 150, y: 300, width: 200, height: 20)
            view1.addSubview(label)
        }
        
        view1.addSubview(position)
        //        lb.center = popup.center
        //        self.view.sendSubview(toBack: popup)
    }

}
//self.view.bringSubviewToFront(label)
//self.view.sendSubviewToBack(imageView)

//let imageView = UIImageView(image: UIImage(named: "avatar.jpg"))
//imageView.autoSetDimensions(to: CGSize(width: 128.0, height: 128.0))
//imageView.layer.borderWidth = 3.0
//imageView.layer.borderColor = UIColor.lightGray.cgColor
//imageView.layer.cornerRadius = 64.0
//imageView.clipsToBounds = true
//return imageView

//lazy var upperView: UIView = {
//    let view = UIView()
//    view.autoSetDimension(.height, toSize: 128)
//    view.backgroundColor = .gray
//    return view
//}()

//UiImageView.left = 100

//UiImageView.top = 50

