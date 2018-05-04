//
//  BaiTap4ViewController.swift
//  Protocol-Framgia
//
//  Created by nguyen.van.bao on 04/05/2018.
//  Copyright © 2018 nguyen.van.bao. All rights reserved.
//

import UIKit

class BaiTap4ViewController: UIViewController {

    @IBOutlet weak var imgViewBackground: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        guard let urlImg = URL(string: "https://serving.photos.photobox.com/381635231529a1716a0f7ba858b9fdf289613ab64fd8c52b1c526450b5d65551ffdc2c40.jpg") else {
            return
        }
        dowImgAndSetImg(urldata: urlImg)
    }
    func getData(url:URL ,  completion:@escaping(Data?, Error?) -> ()){ // tra ve 1 closure
        URLSession.shared.dataTask(with: url){ data, resp, err in
            completion(data,err)
        }.resume()  // chuyen bien vao cho ham datatask
    }
    func dowImgAndSetImg(urldata:URL){
        getData(url: urldata) { (dataImg, err) in
            guard let data = dataImg, err == nil else {
                 print(" link loi hoac khhong dung dinh dang")
                return
            }
            DispatchQueue.main.async {
                self.imgViewBackground.image = UIImage(data: data)
                self.imgViewBackground.contentMode = .scaleAspectFill
            }
        }
    }
   
}
