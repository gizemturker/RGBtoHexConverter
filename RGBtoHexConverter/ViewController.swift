//
//  ViewController.swift
//  RGBtoHexConverter
//
//  Created by Gizem Turker on 11.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtRed: UITextField!
    
    @IBOutlet weak var txtGreen: UITextField!
    
    @IBOutlet weak var txtBlue: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    
    @IBOutlet weak var btnConvert: UIButton!
    
    @IBOutlet weak var lblSelectedColor: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
    }
    
    
    @IBAction func btnConvertClicked(_ sender: UIButton) {
    }
    
}

