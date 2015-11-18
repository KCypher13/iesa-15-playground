//
//  InterfaceController.swift
//  playground WatchKit Extension
//
//  Created by Grégory Joly on 18/11/2015.
//  Copyright © 2015 Grégory Joly. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    enum modes {
        case NOT_SET
        case ADDITION
        case SUBSTRACTION
    }
    var labelString:String = "0"
    var currentMode:modes = modes.NOT_SET
    var savedNum:Int64 = 0
    var lastButtonWasMode:Bool = false

    @IBOutlet var resultLabel: WKInterfaceLabel!
    @IBAction func taped7() {
        tappedChiffre(7)
    }
    @IBAction func taped8() {
        tappedChiffre(8)
    }
    @IBAction func taped9() {
        tappedChiffre(9)
    }
    @IBAction func taped0() {
        tappedChiffre(0)
    }
    @IBAction func taped1() {
        tappedChiffre(1)
    }
    @IBAction func taped2() {
        tappedChiffre(2)
    }
    @IBAction func taped3() {
        tappedChiffre(3)
    }
    @IBAction func taped4() {
        tappedChiffre(4)
    }
    @IBAction func taped5() {
        tappedChiffre(5)
    }
    @IBAction func taped6() {
        tappedChiffre(6)
    }
    @IBAction func tapedPlus() {
    }
    @IBAction func tapedMinus() {
    }
    @IBAction func tapedClear() {
        savedNum = 0
        labelString = "0"
        resultLabel.setText("0")
        currentMode = modes.NOT_SET
        lastButtonWasMode = false
    }
    @IBAction func tapedEqual() {
    }
    
    func tappedChiffre(num:Int){
        labelString = labelString.stringByAppendingString("\(num)")
        updateText()
    }
    
    func updateText() {
        guard let labelInt:Int64 = Int64(labelString)
            else {
                resultLabel.setText("number is too large")
                return
        }
        resultLabel.setText("\(labelInt)")
    }
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
