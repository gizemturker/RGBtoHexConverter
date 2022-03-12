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
    var secilenIndex : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        secilenIndex = sender.selectedSegmentIndex
        lblResult.text?.removeAll()
        txtRed.text?.removeAll()
        txtGreen.text?.removeAll()
        txtBlue.text?.removeAll()
        lblSelectedColor.backgroundColor = UIColor.white
        
        if secilenIndex == 0 {
            
            btnConvert.setTitle("RGB - HEX Convert", for: UIControl.State.normal)
        }else{
            btnConvert.setTitle("HEX - RGB Convert", for: UIControl.State.normal)
        }
    }
    
    
    @IBAction func btnConvertClicked(_ sender: UIButton) {
        
        
        if secilenIndex == 0 {
            //RGB'den HEX'e çeviri yapılacak
            convertRGBtoHEX()
            
        }else{
            // HEX'den RGB'ye çeviri yapılacaktır.
            convertHEXtoRGB()
            
        }
    }
    func convertRGBtoHEX(){
        
        if let redValue = UInt8(txtRed.text!){
            
            if let greenValue = UInt8(txtGreen.text!){
                
                if let blueValue = UInt8(txtBlue.text!){
                    
                    //Success!
                    
                    
                    let redHex = String(format: "%2X", redValue)
                    let greenHex = String(format: "%2X", greenValue)
                    let blueHex = String(format: "%2X", blueValue)
                    
                    lblResult.text = "HEX Color : #\(redHex)\(greenHex)\(blueHex)"
                    lblSelectedColor.backgroundColor = UIColor(red: CGFloat(redValue)/255, green: CGFloat(greenValue)/255, blue: CGFloat(blueValue)/255, alpha: 1)
                }
            }
        }
        
        
    }
    
    func convertHEXtoRGB(){
        
        
        
    }
}

