//
//  ViewController.swift
//  Shalom
//
//  Created by Methodmain on 08/09/2018.
//  Copyright © 2018 Methodmain. All rights reserved.
//

import UIKit

class ViewController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func launchByExtendingBaseClass(_ sender: UIButton) {
        openDatePicker()
    }
    
    @IBAction func launchUsingSingletonWay(_ sender: UIButton) {
        Custom.sharedInstance.chooseDate(delegate: self, parentVC: self, delegateQueue: DispatchQueue.main)
    }
    
    
    override func handleDelegateResponse(selectedDate: Date, extraMeta: String) {
        super.handleDelegateResponse(selectedDate: selectedDate, extraMeta: extraMeta)
        
        print("Got it inside View Controller class")
    }
    
}
