//
//  ViewController.swift
//  CustomAlerts
//
//  Created by Ashwin Tallapaka on 2/12/17.
//  Copyright © 2017 Ashwin Tallapaka. All rights reserved.
//

import UIKit
import PCLBlurEffectAlert

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func AlertActnBtn(_ sender: Any)
    {
        
        let alert = PCLBlurEffectAlert.Controller(title: "Show Me the Meaning of Lonely !!", message: "Something else...!!", effect: UIBlurEffect(style: .dark), style: .actionSheet)
        let alertBtn = PCLBlurEffectAlert.AlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(alertBtn)
        
        alert.configure(cornerRadius:10)
        alert.configure(overlayBackgroundColor: UIColor(red: 10/255, green: 40/255, blue: 60/255, alpha: 0.6))
        alert.configure(titleFont:UIFont.systemFont(ofSize: 30), titleColor:UIColor.blue)
        alert.configure(messageFont:UIFont.systemFont(ofSize: 30), messageColor: UIColor.black)
        alert.show()
    }
}

