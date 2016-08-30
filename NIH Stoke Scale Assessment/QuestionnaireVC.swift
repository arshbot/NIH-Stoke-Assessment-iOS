//
//  ViewController.swift
//  NIH Stoke Scale Assessment
//
//  Created by Harsha Goli on 8/21/16.
//  Copyright © 2016 Harsha Goli. All rights reserved.
//

import UIKit

class QuestionnaireVC: UITableViewController {
    /*
    let questions: [String] =
    //Questions
    [
        "TESTQ1",
        "TESTQ2",
        "TESTQ3",
        "TESTQ4",
        "TESTQ5",
        "TESTQ6",
        "TESTQ7",
        "TESTQ8",
        "TESTQ9",
        "TESTQ10",
        "TESTQ11",
        "TESTQ12",
        "TESTQ13",
        "TESTQ14",
        "TESTQ15"
    ]
    
    let questionDetails: [String] =
    //Question Details (if applicable)
    [
        
    ]
    
    let image: [AnyObject] =
    //Image (if applicable)
    [
    
    ]
    let choices: [[String]] =
    //Choices
    [
        [
            "QUESTION1",
            "QUESTION2",
            "QUESTION3",
            "QUESTION4"
        ],
        [
            "QUESTION1",
            "QUESTION2",
            "QUESTION3",
            "QUESTION4"
        ],
        [
            "QUESTION1",
            "QUESTION2",
            "QUESTION3",
            "QUESTION4"
        ],
        [
            "QUESTION1",
            "QUESTION2",
            "QUESTION3",
            "QUESTION4"
        ],
        [
            "QUESTION1",
            "QUESTION2",
            "QUESTION3",
            "QUESTION4"
        ],
        [
            "QUESTION1",
            "QUESTION2",
            "QUESTION3",
            "QUESTION4"
        ],
        [
            "QUESTION1",
            "QUESTION2",
            "QUESTION3",
            "QUESTION4"
        ],
        [
            "QUESTION1",
            "QUESTION2",
            "QUESTION3",
            "QUESTION4"
        ],
        [
            "QUESTION1",
            "QUESTION2",
            "QUESTION3",
            "QUESTION4"
        ],
        [
            "QUESTION1",
            "QUESTION2",
            "QUESTION3",
            "QUESTION4"
        ],
        [
            "QUESTION1",
            "QUESTION2",
            "QUESTION3",
            "QUESTION4"
        ],
        [
            "QUESTION1",
            "QUESTION2",
            "QUESTION3",
            "QUESTION4"
        ],
        [
            "QUESTION1",
            "QUESTION2",
            "QUESTION3",
            "QUESTION4"
        ],
        [
            "QUESTION1",
            "QUESTION2",
            "QUESTION3",
            "QUESTION4"
        ],
        [
            "QUESTION1",
            "QUESTION2",
            "QUESTION3",
            "QUESTION4"
        ],

    ]
    let pointIndex: [[Int]] =
    //Point Index
    [
        [
            0,
            1,
            2,
            3
        ],
        [
            0,
            1,
            2,
            3
        ],
        [
            0,
            1,
            2,
            3
        ],
        [
            0,
            1,
            2,
            3
        ],
        [
            0,
            1,
            2,
            3
        ],
        [
            0,
            1,
            2,
            3
        ],
        [
            0,
            1,
            2,
            3
        ],
        [
            0,
            1,
            2,
            3
        ],
        [
            0,
            1,
            2,
            3
        ],
        [
            0,
            1,
            2,
            3
        ],
        [
            0,
            1,
            2,
            3
        ],
        [
            0,
            1,
            2,
            3
        ],
        [
            0,
            1,
            2,
            3
        ],
        [
            0,
            1,
            2,
            3
        ],
        [
            0,
            1,
            2,
            3
        ],
    ]
    
   // @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("question", forIndexPath: indexPath)
        cell.textLabel?.text = questions[indexPath.item]
        /*
        if questionDetails[indexPath.item] != "" {
            cell.detailTextLabel?.text = questionDetails[indexPath.item]
        }
         */
        /*
        if image != 0 {
            cell.imageView
        }
        */
        segmentedControl = cell.loadQuestions(choices[indexPath.item], pointIndex: pointIndex[indexPath.item])
        
        
        return cell
    }
    */
}

