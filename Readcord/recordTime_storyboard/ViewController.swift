//
//  ViewController.swift
//  recordTime_storyboard
//
//  Created by InkHin on 2020/9/3.
//  Copyright © 2020 SuffocationRoom. All rights reserved.
//
// 2020-9-3 23:50 By:lin

import Cocoa

class ViewController: NSViewController {

    
    var timer1:Timer!
    @IBOutlet weak var View1: NSView! // View
    @IBOutlet weak var Button1: NSButton! //  start-command
    @IBOutlet weak var Button2: NSButton! //  stop-command
    @IBOutlet weak var Label1: NSTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad();
        //view_load
       
        if Messagebox(a: "使用说明", b: """
                                        以游戏时间为代价的计时器！\n
                                        你将按下启动键来记录学习时间,以每1小时的学习时长兑换获取今日的10分钟游戏时间，\n
                                        该时间可以无限叠加，但仅限于计时当日。\n
                                        Translate by google: \n
                                        A timer at the expense of game time! \n
                                        You will press the start button to record the learning time, exchange every 1 hour of learning time to get today's 10 minutes of game time. \n
                                        The time can be superimposed infinitely, but only on the day of timing.
                                        """)
        {
             Button1.title = "Start"
             Button2.title = "Stop"
             Label1.stringValue = "Time Record"
        }
        else{
            exit(0);  // end sign
        }
        
    }


    @IBAction func Button1(_ sender: Any) {
        // Button_Start_Click
        
        timer1 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.tickDown), userInfo: nil, repeats: true);
        times = true;
        
    }
    
    @IBAction func Button2(_ sender: Any) {
        // Button_Stop_Click
        if times {
        timer1.fireDate = Date.distantPast;
        timer1.invalidate();
            times = false;
            
        }
    }
    
    @objc func tickDown()->Void
    {
        nows += 1
        self.Label1.stringValue = "\(nows)";
        
    }


}
