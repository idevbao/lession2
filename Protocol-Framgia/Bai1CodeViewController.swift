//
//  Bai1CodeViewController.swift
//  Protocol-Framgia
//
//  Created by nguyen.van.bao on 07/05/2018.
//  Copyright © 2018 nguyen.van.bao. All rights reserved.
//

import UIKit

class Bai1CodeViewController: UIViewController {
   

    override func viewDidLoad() {
        super.viewDidLoad()
    // MARK: -viewRed 
        let viewRed = UIView ()
        viewRed.backgroundColor = .red
        self.view.addSubview(viewRed)
        viewRed.translatesAutoresizingMaskIntoConstraints = false
//  NSLayoutConstraint
//        let leadingRedConstraint = NSLayoutConstraint(item: viewRed, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 0)
//        let trailingRedConstraint = NSLayoutConstraint(item: viewRed, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: 0)
//        let topRedConstraint = NSLayoutConstraint(item: viewRed, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 0)
//        let heightRedConstraint = NSLayoutConstraint(item: viewRed, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 1/2, constant: 0)
 //
        
        
        
        viewRed.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        viewRed.trailingAnchor.constraintEqualToSystemSpacingAfter(self.view.trailingAnchor, multiplier: 1).isActive = true
        viewRed.topAnchor.constraint(equalTo:self.view.topAnchor, constant: 0).isActive = true
        viewRed.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1/2).isActive = true
        
        
        
        
        // MARK: -viewBlue
        let viewBlue = UIView ()
        viewBlue.backgroundColor = .blue
        self.view.addSubview(viewBlue)
        viewBlue.translatesAutoresizingMaskIntoConstraints = false
        
//        let leadingBlueConstraint = NSLayoutConstraint(item: viewBlue, attribute: .leading, relatedBy: .equal, toItem: viewRed, attribute: .leading, multiplier: 1, constant: 0)
//        let trailingBlueConstraint = NSLayoutConstraint(item: viewBlue, attribute: .trailing, relatedBy: .equal, toItem: viewRed, attribute: .trailing, multiplier: 1/2, constant: 0)
//        let topBlueConstraint = NSLayoutConstraint(item: viewBlue, attribute: .top, relatedBy: .equal, toItem: viewRed, attribute: .bottom, multiplier: 1, constant: 0)
//        let heightBlueConstraint = NSLayoutConstraint(item: viewBlue, attribute: .height, relatedBy: .equal, toItem: viewRed, attribute: .height, multiplier: 1, constant: 0)
        
        
        viewBlue.leadingAnchor.constraint(equalTo:viewRed.leadingAnchor, constant: 0).isActive = true
        viewBlue.widthAnchor.constraint(equalTo: viewRed.widthAnchor, multiplier: 1/2).isActive = true
        viewBlue.topAnchor.constraintEqualToSystemSpacingBelow(viewRed.bottomAnchor, multiplier: 0).isActive = true
        viewBlue.heightAnchor.constraint(equalTo: viewRed.heightAnchor, multiplier: 1).isActive = true
        
        // MARK: -viewOrigin
        let viewOrange = UIView ()
        viewOrange.backgroundColor = .orange
        self.view.addSubview(viewOrange)
        viewOrange.translatesAutoresizingMaskIntoConstraints = false
        
//        let leadingOrangeConstraint = NSLayoutConstraint(item: viewOrange, attribute: .leading, relatedBy: .equal, toItem: viewBlue, attribute: .trailing, multiplier: 1, constant: 0)
//        let trailingOrangeConstraint = NSLayoutConstraint(item: viewOrange, attribute: .trailing, relatedBy: .equal, toItem: viewRed, attribute: .trailing, multiplier: 1, constant: 0)
//        let topOrangeConstraint = NSLayoutConstraint(item: viewOrange, attribute: .top, relatedBy: .equal, toItem: viewRed, attribute: .bottom, multiplier: 1, constant: 0)
//        let heightOrangeConstraint = NSLayoutConstraint(item: viewOrange, attribute: .height, relatedBy: .equal, toItem: viewRed, attribute: .height, multiplier: 1/2, constant: 0)
        
        
        viewOrange.leadingAnchor.constraint(equalTo:viewBlue.trailingAnchor, constant: 0).isActive = true
        viewOrange.trailingAnchor.constraintEqualToSystemSpacingAfter(viewRed.trailingAnchor, multiplier: 1).isActive = true
        viewOrange.topAnchor.constraintEqualToSystemSpacingBelow(viewRed.bottomAnchor, multiplier: 0).isActive = true
        viewOrange.heightAnchor.constraint(equalTo: viewBlue.heightAnchor, multiplier: 1/2).isActive = true
        
        // MARK: -viewBlack
        let viewBlack = UIView ()
        viewBlack.backgroundColor = .black
        self.view.addSubview(viewBlack)
        viewBlack.translatesAutoresizingMaskIntoConstraints = false
        
//        let leadingBlackConstraint = NSLayoutConstraint(item: viewBlack, attribute: .leading, relatedBy: .equal, toItem: viewOrange, attribute: .leading, multiplier: 1, constant: 0)
//        let widthBlackConstraint = NSLayoutConstraint(item: viewBlack, attribute: .width, relatedBy: .equal, toItem: viewOrange, attribute: .width, multiplier: 1/2, constant: 0)
//        let topBlackConstraint = NSLayoutConstraint(item: viewBlack, attribute: .top, relatedBy: .equal, toItem: viewOrange, attribute: .bottom, multiplier: 1, constant: 0)
//        let heightBlackConstraint = NSLayoutConstraint(item: viewBlack, attribute: .height, relatedBy: .equal, toItem: viewOrange, attribute: .height, multiplier: 1, constant: 0)
        
        viewBlack.leadingAnchor.constraint(equalTo:viewBlue.trailingAnchor, constant: 0).isActive = true
        viewBlack.widthAnchor.constraint(equalTo: viewOrange.widthAnchor, multiplier: 1/2).isActive = true
        viewBlack.topAnchor.constraintEqualToSystemSpacingBelow(viewOrange.bottomAnchor, multiplier: 0).isActive = true
        viewBlack.heightAnchor.constraint(equalTo: viewBlue.heightAnchor, multiplier: 1/2).isActive = true
        
//        let addConstraint = [leadingRedConstraint,trailingRedConstraint,heightRedConstraint,topRedConstraint,heightBlueConstraint,trailingBlueConstraint,topBlueConstraint,heightBlueConstraint,leadingBlueConstraint,leadingOrangeConstraint,trailingOrangeConstraint,topOrangeConstraint,heightOrangeConstraint,leadingBlackConstraint,widthBlackConstraint,topBlackConstraint,heightBlackConstraint]
//        self.view.addConstraints(addConstraint)
        
        
        
    
        
        


    
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
