//
//  ViewController.swift
//  SnackBar
//
//  Created by Ashish Mankar on 29/04/18.
//  Copyright © 2018 Ashish Mankar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func toggleActon(_ sender: Any) {
        
        let snackBar: FRSnackBar = FRSnackBar()
        snackBar.showSnackBar(displayMessage: "Tost message", alpha: 0.8, backgroundColor: .black, textColor: .white)
        
    }
    
    
}

