//
//  ViewController.swift
//  OpenClassTutorial
//
//  Created by 최승원 on 3/19/25.
//

import UIKit
import NewFeature

class MyUitls: Utils {
    override class func sayHello() {
        super.sayHello()
        print("Hello from MyUtils")
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        Utils.sayHello()
        MyUitls.sayHello()
    }


}

