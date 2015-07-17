//
//  ChannelCellView.swift
//  MotionControl
//
//  Created by Alan Westbrook on 7/17/15.
//  Copyright (c) 2015 slartibartfist. All rights reserved.
//

import Cocoa

class ChannelCellView: NSTableCellView {
    
    @IBOutlet var panDesiredSlider:NSSlider!
    @IBOutlet var panActualSlider:NSSlider!
    @IBOutlet var panValueDesiredLabel:NSTextField!
    @IBOutlet var panValueActualLabel:NSTextField!
    
    @IBOutlet var tiltDesiredSlider:NSSlider!
    @IBOutlet var tiltActualSlider:NSSlider!
    @IBOutlet var tiltValueDesiredLabel:NSTextField!
    @IBOutlet var tiltValueActualLabel:NSTextField!

    @IBOutlet var focusDesiredSlider:NSSlider!
    @IBOutlet var focusActualSlider:NSSlider!
    @IBOutlet var focusValueDesiredLabel:NSTextField!
    @IBOutlet var focusValueActualLabel:NSTextField!

    override var objectValue:AnyObject? {
        didSet {
            if let value = objectValue as? Channel {
                // assign value.property to UI elements 
            }
        }
    }
}
