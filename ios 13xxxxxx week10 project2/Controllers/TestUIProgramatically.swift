//
//  TestUIProgramatically.swift
//  ios 13xxxxxx week10 project2
//
//  Created by Kowit Meboon on 19/10/2562 BE.
//  Copyright © 2562 ictsilpakorn. All rights reserved.
//

import UIKit

class TestUIProgramatically: UIViewController{
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        let label = UILabel()
        //label.text = "bmiValue"//"bmiValue"
        label.text = bmiValue //"5.6"
        label.frame = CGRect(x: 200 , y: 200, width: 100, height: 50)
        view.addSubview(label)
    }
}
