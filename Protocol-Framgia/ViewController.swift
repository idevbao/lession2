//
//  ViewController.swift
//  Protocol-Framgia
//
//  Created by nguyen.van.bao on 03/05/2018.
//  Copyright © 2018 nguyen.van.bao. All rights reserved.
//

import UIKit
protocol CanMakeSound {
    var name: String { get set}
    var age: Int { get }
    func sound()
}
struct Dog: CanMakeSound {
    var name: String = ""
    let age: Int
    var from:String
    func sound() {
        print(name,age)
        print("Gau gau")
    }
}
class Cat: CanMakeSound {
    var name: String
    var age: Int
    let cat = ""
    func sound() {
        print("Méo méo")
    }
    init(name:String ,age:Int) {
        self.name = name
        self.age = age
    }
}
enum DogStatus: CanMakeSound {
    
    
    case Normal, BeHungry
    var name: String {
        get {
            switch self {
            case .Normal:
                return "Gâu gâu"
            case .BeHungry:
                return "ấu ấu ..."
            }
        }
        set(new) {
            self.name = new
        }
    }
    
    
    var age: Int {
        return 0
    }
    func sound() {
        switch self {
        case .Normal:
            print("Gâu gâu")
        case .BeHungry:
            print("ấu ấu ...")
        }
    }
}
class catYoung: Cat {
    
}
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Viewcontroller")
        
        
        DogStatus.BeHungry.sound()

        print(DogStatus.Normal.name)
//        DogStatus.BeHungry.name = "1"  assign not set
        
        let cat = Cat(name: "11", age: 11)
        cat.age = 10
        cat.sound()
        print(cat.age)
        
        let catyoung  = catYoung(name: "12", age: 15)
        print(catyoung.sound())
        
        
        
    }
}

