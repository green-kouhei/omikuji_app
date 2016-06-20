//
//  ViewController.swift
//  omikuji_app
//
//  Created by しょうじこうへい on 2016/06/08.
//  Copyright © 2016年 KouheiShoji. All rights reserved.
//

import UIKit
import AVFoundation
import Social

class ViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!
    var today_luck = "エラー"
    
    //シェイクモーション
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if motion == UIEventSubtype.MotionShake {
            a()
            print("Device was shaked")
            
        }
    }
    //サウンドボタン
    @IBOutlet weak var sound_button: UIButton!
    //ここで再生メゾット呼び出し
    
    @IBOutlet weak var my_label: UILabel!
    
    
    //ボタン＆switch文
    @IBAction func my_button(sender: AnyObject) {
        a()
    }
    
    //結果をtweet
    //    @IBAction func tweet_button(sender: AnyObject) {
    //        result_tweet()
    //    }
    @IBAction func tweet_button(sender: AnyObject) {
        result_tweet()
    }
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //おみくじ
    func a()  {
        let num = arc4random() % 8
        print(num)
        
        switch num {
//        case 0:
//            my_label.text = "大吉"
//            print("大吉")
//            break
//        case 1:
//            my_label.text = "吉"
//            print("吉")
//            break
//        case 2:
//            my_label.text = "小吉"
//            print("小吉")
//            break
//        case 3:
//            my_label.text = "中吉"
//            print("中吉")
//            break
//        case 4:
//            my_label.text = "凶"
//            print("凶")
//            break
        default:
            print("エラー",num)
            break
            
        }
        //結果をtweet用変数に設定
        //today_luck=my_label.text!
        
    }
    
    //tweet
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
            let title: String = ("今日の運勢は\(today_luck)")
            controller.setInitialText(title)
            
            // tweet画面を表示
            presentViewController(controller, animated: true, completion: {})
        }else{
            print("エラー")
        }
        
    }
}
