//
//  ViewController3.swift
//  おみくじ
//
//  Created by しょうじこうへい on 2016/06/21.
//  Copyright © 2016年 KouheiShoji. All rights reserved.
//
import UIKit
import AVFoundation
import Social
////import ViewController2


class ViewController3: UIViewController {
    
    var result = "エラー"
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //シェイクモーション
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if motion == UIEventSubtype.MotionShake {
            a()
            print("Device was shaked")
            performSegueWithIdentifier("Segue3",sender: nil)
            
        }
    }
    
    /*
    //画面遷移
   performSegueWithIdentifier("呼び出したいSegueの名前",sender: nil)
    */
 
 
    //おみくじ
    func a()  {
        let num = arc4random() % 8
        print(num)
        
        switch num {
        case 0:
            result = "大吉"
            print("大吉")
            break
        case 1:
            result = "吉"
            print("吉")
            break
        case 2:
            result = "小吉"
            print("小吉")
            break
        case 3:
            result = "中吉"
            print("中吉")
            break
        case 4:
            result = "凶"
            print("凶")
            break
        case 5:
            result = "大凶"
            print("大凶")
            break
        case 6:
            result = "いい感じ"
            print("いい感じ")
            break
        case 7:
            result = "ダメダメ"
            print("ダメダメ")
            break
        default:
            print("エラー",num)
            break
            
        }
        
    }
    
    //次のViewに受け渡し
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        //複数画面用IDでどの画面に渡すか判断
        //if (segue.identifier == "result_screen") {
        // SecondViewControllerクラスをインスタンス化してsegue（画面遷移）で値を渡せるようにバンドルする
        let secondView : ViewController2 = segue.destinationViewController as! ViewController2
        // secondView（バンドルされた変数）に受け取り用の変数を引数とし_paramを渡す（_paramには渡したい値）
        // この時SecondViewControllerにて受け取る同型の変数を用意しておかないとエラーになる
        secondView.today_luck = result
    }
    
    
    //  }
    

}

