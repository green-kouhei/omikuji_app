//
//  ViewController.swift
//  omikuji_app
//
//  Created by しょうじこうへい on 2016/06/08.
//  Copyright © 2016年 KouheiShoji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var my_label: UILabel!
    @IBAction func my_button(sender: AnyObject) {
        let num = arc4random() % 5
        print(num)
        
        switch num {
        case 0:
            my_label.text = "大吉"
            print("0大吉")
            break
        case 1:
            my_label.text = "吉"
            print("吉")
            break
        case 2:
            my_label.text = "小吉"
            print("小吉")
            break
        case 3:
            my_label.text = "中吉"
            print("中吉")
            break
        case 4:
            my_label.text = "凶"
            print("凶")
            break
        default:
            print("default")
            break
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

