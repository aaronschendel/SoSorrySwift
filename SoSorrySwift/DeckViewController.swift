//
//  ViewController.swift
//  SoSorrySwift
//
//  Created by Aaron Schendel on 2/5/15.
//  Copyright (c) 2015 Aschen Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelToChange: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func changeLabel(sender: UIButton) {
        labelToChange.text = "kitty"
        
    }
}
