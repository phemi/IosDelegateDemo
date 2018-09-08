//
//  DatePicker.swift
//  Shalom
//
//  Created by Methodmain on 08/09/2018.
//  Copyright © 2018 Methodmain. All rights reserved.
//

import Foundation
import UIKit

protocol ChangeDateDelegate {
    func userSelectedDate(selectedDate : Date, extraMeta : String)
}

class DatePicker : UIViewController {
    
    @IBOutlet weak var datePicker: UIDatePicker!
    var initDate : Date? = Date()
    var extraMeta : String?
    var dateChangeDelegate : ChangeDateDelegate?
    let dateFormatter = DateFormatter()
    
    @IBOutlet weak var dateDisplayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateFormat = "MMM dd, yyyy"
        
        if let date = initDate {
            datePicker.setDate(date, animated: false)
            dateDisplayLabel.text = dateFormatter.string(from: date)
        } else {
            datePicker.setDate(Date(), animated: false)
            dateDisplayLabel.text = dateFormatter.string(from: Date())
        }
    }
    
    
    @IBAction func datePickerChanged(_ sender: Any) {
        dateDisplayLabel.text = dateFormatter.string(from: datePicker.date)
    }
    
    @IBAction func cancelButtonAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func okButtonAction(_ sender: Any) {
        if let delegate = dateChangeDelegate {
            dateChangeDelegate?.userSelectedDate(selectedDate: self.datePicker.date, extraMeta: self.extraMeta!)
            self.dismiss(animated: true, completion: nil)
        } else {
            print("No delegate found")
        }
        
    }
    
}
