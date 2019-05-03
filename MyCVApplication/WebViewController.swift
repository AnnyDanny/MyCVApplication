//
//  WebViewController.swift
//  MyCVApplication
//
//  Created by Ganna DANYLOVA on 5/3/19.
//  Copyright © 2019 Ganna DANYLOVA. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate, WKUIDelegate {

    
    var myWebView: WKWebView!
    var link : String! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myWebView = WKWebView()
        myWebView.navigationDelegate = self
        view = myWebView
        let url = URL(string: link)!
        myWebView.load(URLRequest(url: url))
        myWebView.allowsBackForwardNavigationGestures = true
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
