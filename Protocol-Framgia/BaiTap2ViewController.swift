//
//  BaiTap2ViewController.swift
//  Protocol-Framgia
//
//  Created by nguyen.van.bao on 04/05/2018.
//  Copyright © 2018 nguyen.van.bao. All rights reserved.
//

import UIKit

class BaiTap2ViewController: UIViewController {
    @IBOutlet weak var btnNumber5: UIButton!
    @IBOutlet weak var btnNumber4: UIButton!
    @IBOutlet weak var btnNumber7: UIButton!
    @IBOutlet weak var btnNumber8: UIButton!
    @IBOutlet weak var btnNumber2: UIButton!
    @IBOutlet weak var btnNumber3: UIButton!
    
    @IBOutlet weak var btnNumber0: UIButton!
    @IBOutlet weak var btnNumber1: UIButton!
    @IBOutlet weak var btnNumber6: UIButton!
    @IBOutlet weak var btnNumber9: UIButton!
    @IBOutlet weak var lblShow: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonTap(_ sender: UIButton) {
        lblShow.text = lblShow.text! + String(sender.tag)
    }
    

}
