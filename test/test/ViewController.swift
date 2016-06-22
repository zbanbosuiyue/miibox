//
//  ViewController.swift
//  test
//
//  Created by Miibox on 6/13/16.
//  Copyright © 2016 Miibox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftButton1: UIButton!
    @IBOutlet weak var leftButton2: UIButton!
    var previousBackButton: UIBarButtonItem!


    override func viewDidLoad() {
        super.viewDidLoad()
        print("a")
        // Do any additional setup after loading the view, typically from a nib.
   /*     let leftBarItem1 = UIButton()
        leftBarItem1.frame = CGRectMake(0, 0, 20, 20)
        leftBarItem1.setFAIcon(FAType.FAAngleLeft, forState: .Normal)
        let leftBarItem2 = UIButton()
        leftBarItem1.frame = CGRectMake(30, 0, 20, 20)
        leftBarItem1.setFAIcon(FAType.FABars, forState: .Normal)
 
        BarItemsView.addSubview(leftBarItem1)
        BarItemsView.addSubview(leftBarItem2)
*/
        leftButton1.setFAIcon(FAType.FAAngleLeft, iconSize: 30, forState: .Normal)
        leftButton2.setFAIcon(FAType.FABars, iconSize: 30, forState: .Normal)
        

 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func openMenu(sender: AnyObject){
        print ("openMenu")
    }


}
