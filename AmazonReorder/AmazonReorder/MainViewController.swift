//
//  ViewController.swift
//  AmazonReorder
//
//  Created by Miibox on 6/6/16.
//  Copyright © 2016 Miibox. All rights reserved.
//

import UIKit

class MainViewController: UIViewController{
    var screenWidth:CGFloat = 0
    var screenHeight:CGFloat = 0
    let searchLable = UILabel()
    let searchInputTextField = UITextField()
    let searchGoButton = UIButton()
    
    var data = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    
    func initView(){
        let interval:CGFloat = 50.0

        searchLable.text = "Search"
        searchLable.textAlignment = .Center
        searchLable.frame = CGRectMake(0, 0, 200, 40)
        searchLable.center = CGPointMake(self.view.center.x, self.view.center.y - 2 * interval)
        
        searchInputTextField.frame = CGRectMake(0, 0, 200, 40)
        searchInputTextField.placeholder = "Enter text here"
        searchInputTextField.borderStyle = UITextBorderStyle.RoundedRect
        searchInputTextField.center = CGPointMake(self.view.center.x, self.view.center.y - interval)
        searchInputTextField.textAlignment = .Center
    
        searchGoButton.frame = CGRectMake(0, 0, 40, 40)
        searchGoButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        searchGoButton.setTitle("GO", forState: .Normal)
        searchGoButton.addTarget(self, action: Selector("clickGo:"), forControlEvents: .TouchUpInside)
        searchGoButton.center = self.view.center


        
        
        self.view.addSubview(searchLable)
        self.view.addSubview(searchInputTextField)
        self.view.addSubview(searchGoButton)
        
    }
    
    func clickGo(sender: UIButton){
        
        performSegueWithIdentifier("SegueToResult", sender: self)
        
        
        UIView.animateWithDuration(0.3 ,
                                   animations: {
                                    self.searchGoButton.transform = CGAffineTransformMakeScale(0.8, 0.8)
                                    self.searchGoButton.setTitleColor(UIColor.redColor(), forState: .Normal)
            },
                                   completion: { finish in
                                    UIView.animateWithDuration(0.6){
                                        self.searchGoButton.transform = CGAffineTransformIdentity
                                        self.searchGoButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
                                    }
        })
    }
    
    
    
    func passData(value: String) {
        data = value
    }
    
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        switch segue.identifier!{
        case "SegueToResult":
            let next = segue.destinationViewController as! ResultViewController
            next.previousData = searchInputTextField.text

        default:
            let next = segue.destinationViewController
        }
    }


}

