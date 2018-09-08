//
//  BaseController.swift
//  Shalom
//
//  Created by Methodmain on 08/09/2018.
//  Copyright © 2018 Methodmain. All rights reserved.
//

import Foundation
import UIKit

class BaseController :  UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func openDatePicker() {
        let datePickerScreen = DatePicker(nibName: "DatePicker", bundle: nil)
        datePickerScreen.dateChangeDelegate = self
        datePickerScreen.extraMeta = ""
        self.present(datePickerScreen, animated: true, completion: nil)
    }
    
    func handleDelegateResponse(selectedDate: Date, extraMeta: String) {
        print("GOT it inside Base Controller class")
    }
}

extension BaseController : ChangeDateDelegate {
    func userSelectedDate(selectedDate: Date, extraMeta: String) {
        self.handleDelegateResponse(selectedDate: selectedDate, extraMeta: extraMeta)
    }
}
