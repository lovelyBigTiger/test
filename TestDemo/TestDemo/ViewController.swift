//
//  ViewController.swift
//  TestDemo
//
//  Created by wyl on 2018/1/22.
//  Copyright © 2018年 wyl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ferrari = Car(type: .Sport, transmissionMode: .Drive)
        
        ferrari.start(minutes: 120)
        
        print(ferrari.miles) // => 140
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

