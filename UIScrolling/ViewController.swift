//
//  ViewController.swift
//  UIScrolling
//
//  Created by Yawo Echitey on 4/18/17.
//  Copyright © 2017 Echitey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let slide1:Slide1 = Bundle.main.loadNibNamed("Slide1", owner: self, options: nil)?.first as! Slide1
        let slide2:Slide2 = Bundle.main.loadNibNamed("Slide2", owner: self, options: nil)?.first as! Slide2
        let slide3:Slide3 = Bundle.main.loadNibNamed("Slide3", owner: self, options: nil)?.first as! Slide3
        
        let slides: [UIView] = [slide1, slide2, slide3]
        
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        
        scrollView.contentSize = CGSize(width: view.frame.width * CGFloat(3), height: view.frame.height)
        
        setupScrollView(slides: slides)
        /*
        slide1.frame = CGRect(x: view.frame.width * CGFloat(0), y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.addSubview(slide1)
        
        slide2.frame = CGRect(x: view.frame.width * CGFloat(1), y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.addSubview(slide2)
        
        slide3.frame = CGRect(x: view.frame.width * CGFloat(2), y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.addSubview(slide3)
         */
    }
    
    func setupScrollView(slides: [UIView]){
        for i in 0..<slides.count{
            slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
            scrollView.addSubview(slides[i])
        }
    }

}

