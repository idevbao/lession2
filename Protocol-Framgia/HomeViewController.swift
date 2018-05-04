//
//  HomeViewController.swift
//  Protocol-Framgia
//
//  Created by nguyen.van.bao on 03/05/2018.
//  Copyright © 2018 nguyen.van.bao. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    var btnNumber:UIButton?
    var lblShow:UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("HomeViewController")
        self.view.backgroundColor = UIColor.lightGray
        
//        btnNumber = UIButton(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
//        btnNumber?.setTitle("0", for:UIControlState.normal)
//        btnNumber!.backgroundColor = UIColor.gray
//        btnNumber!.translatesAutoresizingMaskIntoConstraints = false;
//        btnNumber!.tag = 0
//        self.view.addSubview(btnNumber!)
        
        
        lblShow = UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        lblShow?.backgroundColor = UIColor.white
        lblShow?.text = "0"
        
        lblShow?.textAlignment = .right
        lblShow!.translatesAutoresizingMaskIntoConstraints = false;
        self.view.addSubview(lblShow!)
        for tagy in 0...4 {
            for _ in 0...3 {
                btnNumber = UIButton(frame: CGRect(x: 100, y:100, width: 100, height: 100))
                btnNumber?.setTitle("0", for:UIControlState.normal)
                btnNumber!.backgroundColor = UIColor.gray
                btnNumber!.translatesAutoresizingMaskIntoConstraints = false;
                btnNumber!.tag = tagy
                self.view.addSubview(btnNumber!)
                
            }
        }
        
        
//        btnNumber!.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1/4).isActive = true
//        btnNumber!.heightAnchor.constraint(equalTo: btnNumber!.widthAnchor, multiplier: 1).isActive = true
//
//        btnNumber!.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
//        btnNumber!.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
//
//        lblShow!.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
//        lblShow!.heightAnchor.constraint(equalTo: btnNumber!.heightAnchor, multiplier: 1).isActive = true
//
//        lblShow!.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
//        lblShow!.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        

        
       
        
        
       
    }

   
}
