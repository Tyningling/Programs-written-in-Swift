//
//  windowinput.swift
//  recordTime_storyboard
//
//  Created by InkHin on 2020/9/5.
//  Copyright © 2020 SuffocationRoom. All rights reserved.
//

import Cocoa

class windowinput : NSViewController{

    @IBOutlet weak var OKButton: NSButton!
    @IBOutlet weak var Textbox1: NSTextFieldCell!
    @IBOutlet weak var Label2: NSTextField!
    @IBAction func OKButton(_ sender: Any) {
    
    let tmp : Int? = Int(self.Textbox1.stringValue) //NSstring是一个真是令人恼怒的东西！！！ 困-_-
    nows = Int(tmp!)
        
    self.view.window?.close(); //关闭当前视图窗体
    }
    
    override func viewDidLoad(){
        super.viewDidLoad();
        Label2.stringValue = "请输入您想要的起点值。"
        Textbox1.stringValue = String(nows)
        OKButton.title = "确信"
    }
    
}
