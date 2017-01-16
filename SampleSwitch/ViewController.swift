//
//  ViewController.swift
//  SampleSwitch
//
//  Created by Hitesh on 1/16/17.
//  Copyright © 2017 spaceo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var swOnOff: UISwitch!
    @IBOutlet weak var btnSwitch: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Add Target for UISwitch
        swOnOff.addTarget(self, action: #selector(stateChanged(_:)), forControlEvents: .TouchUpInside)
    }
    
    func stateChanged(switchState: UISwitch) {
        if swOnOff.on {
            //Switch On
            btnSwitch.setTitle("Switch Off", forState: .Normal)
        } else {
            //Switch Off
            btnSwitch.setTitle("Switch ON", forState: .Normal)
        }
    }
    

    //MARK: Defination for switch ON/Off button action
    @IBAction func actionSwitch(sender: AnyObject) {
        if swOnOff.on {
            swOnOff.setOn(false, animated: true)
            btnSwitch.setTitle("Switch ON", forState: .Normal)
        } else {
            swOnOff.setOn(true, animated: true)
            btnSwitch.setTitle("Switch Off", forState: .Normal)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

