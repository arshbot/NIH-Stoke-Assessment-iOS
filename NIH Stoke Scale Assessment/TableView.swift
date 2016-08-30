//
//  OptionsTableView.swift
//  NIH Stoke Scale Assessment
//
//  Created by Harsha Goli on 8/21/16.
//  Copyright © 2016 Harsha Goli. All rights reserved.
//

import Foundation
import UIKit

//used to inherit  NSObject, UITableViewDelegate, UITableViewDataSource, but trying something out with VC
class TableView: UITableViewController{
    var questions: [String] = ["NULL"]
    
    convenience init(questions: [String]){
        self.init()
        self.questions = questions
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("customcell", forIndexPath: indexPath)
        cell.textLabel?.text = questions[indexPath.item]
        return cell
    }
    
    override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        print("Selected \(indexPath.item)")
    }
}