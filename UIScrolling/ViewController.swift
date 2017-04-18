//
//  ViewController.swift
//  UIScrolling
//
//  Created by Yawo Echitey on 4/18/17.
//  Copyright © 2017 Echitey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        
        let slide1:Slide1 = Bundle.main.loadNibNamed("Slide1", owner: self, options: nil)?.first as! Slide1
        let slide2:Slide2 = Bundle.main.loadNibNamed("Slide2", owner: self, options: nil)?.first as! Slide2
        let slide3:Slide3 = Bundle.main.loadNibNamed("Slide3", owner: self, options: nil)?.first as! Slide3
        
        let slides: [UIView] = [slide1, slide2, slide3]
        
        setupSlideView()
        
        setupScrollView(slides: slides)
        
        view.bringSubview(toFront: pageControl)
    }
    
    func setupSlideView(){
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        
        scrollView.contentSize = CGSize(width: view.frame.width * CGFloat(3), height: view.frame.height)
    }
    
    func setupScrollView(slides: [UIView]){
        for i in 0..<slides.count{
            slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
            scrollView.addSubview(slides[i])
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex = round(scrollView.contentOffset.x / view.frame.width)
        pageControl.currentPage = Int(pageIndex)
    }

}

