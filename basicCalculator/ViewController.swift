//
//  ViewController.swift
//  basicCalculator
//
//  Created by APPLE on 03/11/22.
//

import UIKit

class ViewController: UIViewController {
    var numberOnScreen:Double=0;
    var firstEntered:Double=0;
    var MathOperation=false;
    var operations=0;
    

    @IBOutlet weak var LabelButton: UILabel!
    
    
    @IBAction func numberButton(_ sender: UIButton) {
        if(MathOperation==true){
        LabelButton.text=LabelButton.text!+String(sender.tag-1)
        numberOnScreen=Double(LabelButton.text!)!
            MathOperation=false
        }
        else{
            LabelButton.text=LabelButton.text! + String(sender.tag-1)
            numberOnScreen=Double(LabelButton.text!)!
        }
        
    }
    
    
    
    @IBAction func operatorButton(_ sender: UIButton) {
        if LabelButton.text != "" && sender.tag != 15 && sender.tag != 16{
            firstEntered=Double(LabelButton.text!)!
            if sender.tag==11{
                LabelButton.text = "+"
            }
            else if sender.tag == 12{
                LabelButton.text = "-"
            }
            else if sender.tag == 13{
                LabelButton.text = "*"
            }
            else if sender.tag == 14{
                LabelButton.text = "/"
            }
            operations=sender.tag
            MathOperation=true
            
        }
        else if sender.tag==15{
            if operations==11{
            LabelButton.text=String(firstEntered+numberOnScreen)
        }
            else if operations==12{
                LabelButton.text=String(firstEntered-numberOnScreen)
            }
            else if operations==13{
                LabelButton.text=String(firstEntered*numberOnScreen)
            }
            else if operations==14{
                LabelButton.text=String(firstEntered/numberOnScreen)
            }
        }
        
        
        }
    
    
    @IBAction func equalButton(_ sender: Any) {
    }
    
    @IBAction func clearButton(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}




