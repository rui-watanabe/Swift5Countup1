//
//  ViewController.swift
//  Swift5Countup1
//
//  Created by watar on 2019/09/18.
//  Copyright © 2019 rui watanabe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var countUpLabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        //Labelの文字を0にしたい
        countUpLabel.text = "0"
        
    }
    
    

    @IBAction func plus(_ sender: Any) {
    
    
    //カウントアップさせたい
    count = count + 1
    
    //Labelに文字を表示したい
    countUpLabel.text = String(count)
    
    
    //もし10以上になったら、色を黄色に変更したい
        if count >= 10{
            changeTextColor()
        }
    
    
    
 //新しくメソッドが作成された
    func changeTextColor(){
      countUpLabel.textColor = .yellow
    }
}
    
    
  
    
    
    @IBAction func minus(_ sender: Any) {
    
    
    //カウントダウンさせたい
    count = count - 1

    
    //Labelに文字を反映させたい
    countUpLabel.text = String(count)
    
    
    //もし0以下になったら色を、白色に変更したい
        if count <= 0{
            resetColor()
        }
}

//新しくメソッドが作成された
    func changeTextColor(){
      countUpLabel.textColor = .yellow
    }
    
    func resetColor(){
      countUpLabel.textColor = .white
    }
}



