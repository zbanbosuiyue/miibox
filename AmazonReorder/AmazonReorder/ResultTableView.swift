//
//  ResultTableView.swift
//  AmazonReorder
//
//  Created by Miibox on 6/6/16.
//  Copyright © 2016 Miibox. All rights reserved.
//

import UIKit

let reuseIdentifier = "Cell"

class ResultTableView: UIView, UITableViewDataSource, UITableViewDelegate {
    
    var tableView : UITableView?
    
    override init(frame: CGRect){
        super.init(frame: frame)
        self.setupTableMenu(frame)
    }
    
    
    func setupTableMenu(frame: CGRect){
        
        let tableView = UITableView(frame: CGRectMake(0, 0, frame.size.width, frame.size.height))
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorColor = UIColor.whiteColor()
        tableView.tableFooterView = UIView(frame: CGRectZero)
        tableView.backgroundColor = UIColor.clearColor()
        
        //tableView.contentInset = UIEdgeInsetsMake(0, 0, 44, 0);
        self.addSubview(tableView)
        
        self.tableView = tableView
        self.tableView?.registerClass(UITableViewCell.self, forCellReuseIdentifier: reuseIdentifier)
    }
    
    
    //MARK: - Tableview Delegate & Datasource
    func tableView(tableView:UITableView, numberOfRowsInSection section:Int) -> Int
    {
        
        return 5
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: reuseIdentifier)
        cell.backgroundColor = UIColor.clearColor()
        cell.textLabel?.text = "aaa"
        cell.textLabel?.font = UIFont(name: "HelveticaNeue", size: 18)
        cell.textLabel?.textColor = UIColor.whiteColor()
        cell.textLabel?.textAlignment = NSTextAlignment.Center
        
        cell.layer.shadowColor = UIColor.grayColor().CGColor
        cell.layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
        cell.layer.shadowOpacity = 0.5
        cell.layer.shadowRadius = 0.5
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        print(indexPath)
    }
    

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
}
