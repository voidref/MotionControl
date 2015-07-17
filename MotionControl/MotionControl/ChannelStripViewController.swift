//
//  ViewController.swift
//  MotionControl
//
//  Created by Alan Westbrook on 7/17/15.
//  Copyright (c) 2015 slartibartfist. All rights reserved.
//

import Cocoa

class ChannelStripViewController: NSViewController, NSTableViewDelegate, NSTableViewDataSource {

    var channelData = [Channel]()
    override func viewDidLoad() {
        super.viewDidLoad()

        // test item
        let channelOne = Channel();
        channelOne.panActual = 0.5
        channelOne.panDesired = 0.5
        
        channelData.append(channelOne)
        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    func tableView(tableView: NSTableView, objectValueForTableColumn tableColumn: NSTableColumn?, row: Int) -> AnyObject? {
        return channelData[row]
    }
    
    func numberOfRowsInTableView(tableView: NSTableView) -> Int {
        return channelData.count
    }

    // Not sure this is the ideal way to do this.
    func tableView(tableView: NSTableView, heightOfRow row: Int) -> CGFloat {
        return 187.0
    }
}

