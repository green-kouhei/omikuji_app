//
//  ViewController2.swift
//  おみくじ
//
//  Created by しょうじこうへい on 2016/06/20.
//  Copyright © 2016年 KouheiShoji. All rights reserved.
//

import UIKit
import AVFoundation
import Social


//ViewController2.swift

class ViewController2: UIViewController {
    
    var today_luck:String = "error"
    
    //    my_label.text=sendText
    
    
    
    @IBOutlet weak var my_label: UILabel!
    
    @IBAction func tweet_button(sender: AnyObject) {
        result_tweet()
        
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        //受け取り
        my_label.text=today_luck
        my_label.adjustsFontSizeToFitWidth=true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func result_tweet(){
        // availability check
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter) {
            
            // snsの種類を定義
            let controller = SLComposeViewController(forServiceType: SLServiceTypeTwitter)//SNSの種類
            
            // リンク追加
            //let link: String = "http://www.apple.com"
            //let url = NSURL(string: link)
            //controller.addURL(url)
            
            // テキスト追加
            let title: String = ("今日の運勢は\(today_luck)でした")//これ取る
            controller.setInitialText(title)
            
            // tweet画面を表示
            presentViewController(controller, animated: true, completion: {})
        }else{
            print("エラー")
        }
        
    }
    
}