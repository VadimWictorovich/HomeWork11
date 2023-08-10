//
//  ViewController.swift
//  HomeWork11
//
//  Created by Вадим Игнатенко on 9.08.23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var outVolLevel: UILabel!
    @IBOutlet weak var outProgressView: UIProgressView!
    @IBOutlet weak var outTF: UITextField!
    @IBOutlet weak var outSlider: UISlider!
    @IBOutlet weak var outDatePicker: UIDatePicker!
    @IBOutlet weak var outTimeLbl: UILabel!
    @IBOutlet weak var outSwich: UISwitch!
    //private var swichOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func sliderAction(_ sender: Any) {
        outTF.text = String(outSlider.value)
        outProgressView.setProgress(outSlider.value, animated: true)
        
    }
    
    
    @IBAction func setThisTimeAction(_ sender: Any) {
        let timeStartFormatter = DateFormatter()
        timeStartFormatter.dateFormat = "HH:mm"
        outTimeLbl.text = timeStartFormatter.string(from: outDatePicker.date)
        
    }
    
    
    @IBAction func swichAction(_ sender: Any) {
        let isOn = outSwich.isOn
        if  outSwich.isOn {
            outTimeLbl.backgroundColor = #colorLiteral(red: 0.7372549176, green: 0.7372549176, blue: 0.7372549176, alpha: 1)
        } else {
            outTimeLbl.backgroundColor = .red
        }
        
    }
        
        
    
    
    @IBAction func clearButAction(_ sender: Any) {
        outTimeLbl.text = ""
    }
}


