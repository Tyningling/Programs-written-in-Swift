//
//  AppDelegate.swift
//  recordTime_storyboard
//
//  Created by InkHin on 2020/9/3.
//  Copyright © 2020 SuffocationRoom. All rights reserved.
//

import Cocoa
public var nows : Int = 0;
public var times = false;

@NSApplicationMain

class AppDelegate: NSObject, NSApplicationDelegate {


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
            
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

// 2020-9-3 By:lin
 
public func Messagebox(a:String,b:String) -> Bool{
    let myPopa : NSAlert = NSAlert();
    myPopa.messageText = a;
    myPopa.informativeText = b;
    myPopa.addButton(withTitle: "OK");
    myPopa.addButton(withTitle: "Cancel");
    return myPopa.runModal() == NSApplication.ModalResponse.alertFirstButtonReturn;
}
