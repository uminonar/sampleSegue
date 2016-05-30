//
//  ViewController.swift
//  sampleSegue
//
//  Created by RIho OKubo on 2016/05/04.
//  Copyright © 2016年 RIho OKubo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //カウント用の変数（メンバ変数：クラスの中に書く変数）メンバ変数を作る、プロパティみたいな扱いができる様になるので、プロパティ変数とも。。。
    var myCount = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    //画面が切り替わる時
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        //もしセグエの名前がmysegueだったら
        if (segue.identifier=="mySegue"){
            //カウントアップして
            myCount++;
            
            //次の画面のtmpCountに、myCountの値を受け渡す
            var newVC = segue.destinationViewController as! SecondViewController
            
            newVC.tmpCount = myCount
        }
        
    }
    
        //この画面に戻ってきたとき
//        @IBAction func returnMenue(segue: UIStoryboardSegue){
//            //myCount変数に、前の画面のtmpCountの値を受け取って
//            let newVC = segue.sourceViewController as! SecondViewController
//            myCount = newVC.tmpCount
//            
//            print(myCount)
//            //カウントアップして
//            myCount++
//            //値を出力する
//            //print(myCount)->できない。myCount存在しない？　０もでない。なぜ？
//            
//            
//            print("前の画面から戻ってきたとき＜\(myCount)＞")
//        }

    
    
    @IBAction func returnMenu(segue: UIStoryboardSegue){
        
        //myCount変数に、前の画面のtmpCountの値を受け取って
        let newVC = segue.sourceViewController as! SecondViewController
        myCount = newVC.tmpCount
        
        
        //カウントアップして
        myCount++
        //値を出力する
        //print(myCount)->できない。myCount存在しない？　０もでない。なぜ？
        
        
        print("前の画面から戻ってきたとき＜\(myCount)＞")

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

