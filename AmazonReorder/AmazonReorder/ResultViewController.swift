//
//  ViewController.swift
//  AmazonReorder
//
//  Created by Miibox on 6/6/16.
//  Copyright © 2016 Miibox. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var previousData:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(previousData)
        let resultTableView = ResultTableView(frame: CGRectMake(0, 0, 100, 200))
        self.view.addSubview(resultTableView)
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
    

}
