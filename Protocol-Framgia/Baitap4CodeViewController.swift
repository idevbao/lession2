//
//  Baitap4CodeViewController.swift
//  Protocol-Framgia
//
//  Created by nguyen.van.bao on 07/05/2018.
//  Copyright © 2018 nguyen.van.bao. All rights reserved.
//

import UIKit

class Baitap4CodeViewController: UIViewController {
    var imgView:UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let txtUser = UITextField()
        let txtPass = UITextField()
        let btnLogin = UIButton()
        let btnReg = UIButton()
        
        
        self.view.backgroundColor = .white

        imgView = UIImageView()
        imgView.backgroundColor = .gray
        imgView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(imgView)
        imgView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        imgView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        imgView.topAnchor.constraint(equalTo:self.view.topAnchor, constant: 0).isActive = true
        imgView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1).isActive = true
        
        let viewUserpass = UIView()
        viewUserpass.backgroundColor = .gray
        self.view.addSubview(viewUserpass)
        viewUserpass.translatesAutoresizingMaskIntoConstraints = false
        viewUserpass.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 3/4, constant: 0).isActive = true
        viewUserpass.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier:1/3, constant: 0).isActive = true
        viewUserpass.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        viewUserpass.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 20).isActive = true

        viewUserpass.alpha = 0.3

        txtUser.translatesAutoresizingMaskIntoConstraints = false
        viewUserpass.addSubview(txtUser)
        txtUser.backgroundColor = .white
        txtPass.tintColor = .red
        txtPass.textColor = .blue

        txtUser.widthAnchor.constraint(equalTo: viewUserpass.widthAnchor, multiplier: 3/4, constant: 0).isActive = true
        txtUser.heightAnchor.constraint(equalTo: viewUserpass.heightAnchor, multiplier: 1/5, constant: 0).isActive = true
        txtUser.centerXAnchor.constraint(equalTo:viewUserpass.centerXAnchor, constant: 0).isActive = true
        txtUser.topAnchor.constraint(equalTo: viewUserpass.topAnchor, constant: 20).isActive = true
        
        txtPass.translatesAutoresizingMaskIntoConstraints = false
        viewUserpass.addSubview(txtPass)
        txtPass.backgroundColor = .white
        txtPass.tintColor = .red
        txtPass.textColor = .blue
        txtPass.widthAnchor.constraint(equalTo: viewUserpass.widthAnchor, multiplier: 3/4, constant: 0).isActive = true
        txtPass.heightAnchor.constraint(equalTo: viewUserpass.heightAnchor, multiplier: 1/5, constant: 0).isActive = true
        txtPass.centerXAnchor.constraint(equalTo:viewUserpass.centerXAnchor, constant: 0).isActive = true
        txtPass.topAnchor.constraint(equalTo: txtUser.bottomAnchor, constant: 20).isActive = true

        btnLogin.translatesAutoresizingMaskIntoConstraints = false
        viewUserpass.addSubview(btnLogin)
        btnLogin.backgroundColor = .red
        btnLogin.setTitle("Login", for: .normal)
        
        btnLogin.widthAnchor.constraint(equalTo: txtPass.widthAnchor, multiplier: 2/5).isActive = true
        btnLogin.heightAnchor.constraint(equalTo: txtPass.heightAnchor, multiplier: 1).isActive = true
        btnLogin.leadingAnchor.constraint(equalTo: txtPass.leadingAnchor).isActive = true
        btnLogin.topAnchor.constraint(equalTo:txtPass.bottomAnchor, constant: 10).isActive = true
        
        btnReg.translatesAutoresizingMaskIntoConstraints = false
        viewUserpass.addSubview(btnReg)
        btnReg.backgroundColor = .red
        btnReg.setTitle("Reg", for: .normal)
        
        btnReg.widthAnchor.constraint(equalTo: txtPass.widthAnchor, multiplier: 2/5).isActive = true
        btnReg.heightAnchor.constraint(equalTo: txtPass.heightAnchor, multiplier: 1).isActive = true
        btnReg.trailingAnchor.constraint(equalTo: txtPass.trailingAnchor).isActive = true
        btnReg.topAnchor.constraint(equalTo:txtPass.bottomAnchor, constant: 10).isActive = true
        
        
        
        
        
        
        guard let urlImg = URL(string: "https://serving.photos.photobox.com/381635231529a1716a0f7ba858b9fdf289613ab64fd8c52b1c526450b5d65551ffdc2c40.jpg") else {
            print("nillllll")
            return
        }
        setImg(url: urlImg)
        
        
        
        
        
    
    }
    func getData(url:URL , completionClosure:@escaping(Data?,Error? )  -> ()) {
        URLSession.shared.dataTask(with: url) {data,resp,err in
            completionClosure(data,err)
        }.resume()
    }
    func setImg(url:URL) -> Void {
        getData(url: url) { (data, err) in
            guard let dataimg = data, err == nil else{
                 print("nil")
                return
            }
            DispatchQueue.main.sync {
                self.imgView.image = UIImage(data:dataimg)
                self.imgView.contentMode = .scaleAspectFill
            }
            
        }
    }

    

    


    // MARK: - Navigation

 

}
