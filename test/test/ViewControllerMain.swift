//
//  ViewControllerMain.swift
//  test
//
//  Created by Miibox on 6/13/16.
//  Copyright © 2016 Miibox. All rights reserved.
//

import UIKit

class ViewControllerMain: UIViewController {
    @IBAction func openAView(sender: AnyObject) {
        print("hello")
        performSegueWithIdentifier("segue01", sender: self)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let backItem = UIBarButtonItem()
        backItem.title = "backWOW"
        navigationItem.backBarButtonItem = backItem
        //navigationItem.leftBarButtonItem = backItem
        
        if segue.identifier == "segue01" {
            let next = segue.destinationViewController as! ViewController
            next.previousBackButton = backItem
        }
        
        
    }

}
