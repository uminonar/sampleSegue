//
//  SecondViewController.swift
//  sampleSegue
//
//  Created by RIho OKubo on 2016/05/04.
//  Copyright © 2016年 RIho OKubo. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    //受け取り用の変数（メンバ変数：クラスの中に書く変数）
    var tmpCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //画面が表示された時
    override func viewWillAppear(animated: Bool) {
         print("次の画面が表示されたとき<\(tmpCount)>")
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
