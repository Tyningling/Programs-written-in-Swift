//
//  Menu.swift
//  recordTime_storyboard
//
//  Created by InkHin on 2020/9/4.
//  Copyright © 2020 SuffocationRoom. All rights reserved.
//


import Cocoa

class Menu : NSObject {
    
    @IBOutlet weak var More_menu2: NSMenu!
    @IBOutlet weak var Label1: NSTextField!
    
    @IBAction func More_menu1(_ sender: Any) {
    //计算游戏时长_Click
     //   let ts : Int = Int(Label1.stringValue);
    //    Label1.stringValue = MyGametime(a:ts);
     
        Messagebox(a: "游戏时长", b: "您目前可以兑换" + "\(MyGametime(a:nows))" + "小时的游戏时间。" )
        
    }

    
    @IBAction func Moer_menu2(_ sender: Any) {
        //自定义计时起点_Click
    }
    
    func GameStart(a:Int) -> Void{
        nows = a;
    }
    
    func MyGametime(a:Int) -> String{
        let h : Float = 3600.00;
        let Gametime : Float =  Float(a) / h  ;
        return "\(Gametime)";
    }
    
}
