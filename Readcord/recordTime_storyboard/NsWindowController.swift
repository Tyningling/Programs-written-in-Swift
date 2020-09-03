//
//  NsWindowController.swift
//  recordTime_storyboard
//
//  Created by InkHin on 2020/9/3.
//  Copyright © 2020 SuffocationRoom. All rights reserved.
//
import Cocoa


class NsWindow: NSWindowController  {
    
    @IBOutlet weak var Window1: NSWindow!
    
    override func windowDidLoad(){
        super.windowDidLoad();
        Window1.title = "Time Record"
        
        // 2020-9-4 1.30 困 =-=
    }
}
 

    

