//
//  ViewController.swift
//  MiiboxApp
//
//  Created by Miibox on 6/14/16.
//  Copyright © 2016 Miibox. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    var TopCategorySection: UIView

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func initMainLayout(){
        TopCategorySection = UIView()
    }
}

