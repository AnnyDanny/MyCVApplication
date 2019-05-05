//
//  ThirdViewController.swift
//  MyCVApplication
//
//  Created by Ganna DANYLOVA on 5/2/19.
//  Copyright © 2019 Ganna DANYLOVA. All rights reserved.
//

import UIKit

class ThirdViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let projectsVC = viewController as! ProjectsViewController
        if projectsVC.projectIndex > 0 {
            return allProjects[projectsVC.projectIndex - 1]
        }
        if projectsVC.projectIndex == 0 {
            return allProjects.last
        }
        return nil
    }
    
    private func setupPageControl() {
        let appearance = UIPageControl.appearance()
        appearance.pageIndicatorTintColor = UIColor.gray
        appearance.currentPageIndicatorTintColor = UIColor.white
        appearance.backgroundColor = UIColor.darkGray
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return allProjects.count
    }
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let projectsVC = viewController as! ProjectsViewController
        if projectsVC.projectIndex + 1 < allProjects.count {
            return allProjects[projectsVC.projectIndex + 1]
        }
        if projectsVC.projectIndex + 1 == allProjects.count {
            return allProjects.first
        }
        return nil
    }
    
    var allProjects = [ProjectsViewController]()

    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        delegate = self
        setupPageControl()
        for x in 0..<projectsArray.count {
            allProjects.append(getNextBestProjects(withIndex : x)!)
        }
        
        if let firstViewController = allProjects.first {
            setViewControllers([firstViewController],
                               direction: .forward,
                               animated: true,
                               completion: nil)
        }
        // Do any additional setup after loading the view.
    }

    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
    
    func getNextBestProjects(withIndex index : Int) -> ProjectsViewController? {
        print("hei next\n")
        if index < projectsArray.count {
            let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "projectView") as! ProjectsViewController
            nextVC.projectIndex = index
            return nextVC
        }
        return nil
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
