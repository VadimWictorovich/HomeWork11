//
//  ViewController.swift
//  HomeWork11
//
//  Created by Вадим Игнатенко on 9.08.23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private var outVolLevel: UILabel!
    @IBOutlet private var outProgressView: UIProgressView!
    @IBOutlet private var outTF: UITextField!
    @IBOutlet private var outSlider: UISlider!
    @IBOutlet private var outDatePicker: UIDatePicker!
    @IBOutlet private var outTimeLbl: UILabel!
    @IBOutlet private var outSwich: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction private func sliderAction(_ sender: Any) {
        outTF.text = String(outSlider.value)
        outProgressView.setProgress(outSlider.value, animated: true)
    }
    
    @IBAction private func setThisTimeAction(_ sender: Any) {
        let timeStartFormatter = DateFormatter()
        timeStartFormatter.dateFormat = "HH:mm"
        outTimeLbl.text = timeStartFormatter.string(from: outDatePicker.date)
    }
    
    @IBAction private func swichAction(_ sender: Any) {
        if outSwich.isOn {
            outTimeLbl.backgroundColor = #colorLiteral(red: 0.7372549176, green: 0.7372549176, blue: 0.7372549176, alpha: 1)
        } else {
            outTimeLbl.backgroundColor = .red
        }
    }
        
    @IBAction private func clearButAction(_ sender: Any) {
        outTimeLbl.text = ""
    }
}
