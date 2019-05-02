//
//  FirstViewController.swift
//  MyCVApplication
//
//  Created by Ganna DANYLOVA on 5/2/19.
//  Copyright © 2019 Ganna DANYLOVA. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate {

    var myTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myTableView = UITableView(frame: view.bounds, style: .plain)
        self.myTableView.delegate = self
        view.addSubview(myTableView)
//        navigationItem.titleView = UIImageView(image: UIImage(named: "MyImage"))
        setImage()
//        setGradient()
        addLabels()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setImage() {
        let imageName = "MyImage"
        let image = UIImage(named: imageName)
        let imageView  = UIImageView(image: image!)
        imageView.frame = CGRect(x: 20, y: 50, width: 100, height: 100)
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
        view.addSubview(imageView)
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
    
    func addLabels() {
        //        let popup = UIView(frame: CGRect(x: 0, y: 0, width: 700, height: 150))
        
        let name = UILabel(frame: CGRect(x: 150, y: 25, width: 200, height: 100))
        name.text = "Danylova Anna"
        name.font = UIFont.preferredFont(forTextStyle: .footnote)
        name.textColor = .black
        //        popup.backgroundColor = UIColor.lightGray
        name.font = UIFont.systemFont(ofSize: 30)
        // show on screen
        //        self.view.addSubview(popup)
        view.addSubview(name)
        let position = UILabel(frame: CGRect(x: 200, y: 60, width: 200, height: 100))
        position.text = "IOS/Swift Developer"
        position.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(position)
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

