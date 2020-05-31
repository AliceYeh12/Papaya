//
//  ProposalViewController.swift
//  Papaya
//
//  Created by Alice Yeh on 5/31/20.
//  Copyright © 2020 Alice Yeh. All rights reserved.
//

import UIKit

class ProposalViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var projectTypePicker: UIPickerView!
    
    var pickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        projectTypePicker.delegate = self
        projectTypePicker.dataSource = self
        
        pickerData = ["Activism", "Art & Design", "Food", "Games", "Media", "Music", "Photography", "Technology"]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
}
