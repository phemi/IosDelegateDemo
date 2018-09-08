//
//  Custom.swift
//  Shalom
//
//  Created by Methodmain on 08/09/2018.
//  Copyright © 2018 Methodmain. All rights reserved.
//

import Foundation
import UIKit


class Custom {
    static var sharedInstance = Custom()

    func chooseDate(delegate: ChangeDateDelegate, parentVC: UIViewController, delegateQueue : DispatchQueue!) {
        let datePickerScreen = DatePicker(nibName: "DatePicker", bundle: nil)
        datePickerScreen.dateChangeDelegate = delegate
        datePickerScreen.extraMeta = ""
        delegateQueue?.async {
            parentVC.present(datePickerScreen, animated: true, completion: nil)
        }
    }
    
}

extension Custom : ChangeDateDelegate {
    func userSelectedDate(selectedDate: Date, extraMeta: String) {
        print("GOT it inside custom class")
    }
}
