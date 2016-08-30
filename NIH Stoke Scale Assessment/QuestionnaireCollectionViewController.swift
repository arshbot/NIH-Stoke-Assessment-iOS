//
//  QuestionnaireCollectionViewController.swift
//  NIH Stoke Scale Assessment
//
//  Created by Harsha Goli on 8/24/16.
//  Copyright © 2016 Harsha Goli. All rights reserved.
//

import Foundation
import UIKit

class QuestionnaireCollectionViewController: UICollectionViewController {
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let layout = collectionView?.collectionViewLayout as? QuestionnaireLayout {
            layout.delegate = self
        }
        
    }
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell: CustomCollectionCell = collectionView.dequeueReusableCellWithReuseIdentifier("questionCell", forIndexPath: indexPath) as! CustomCollectionCell
        //cell.questionLabel.text = questions[indexPath.item]
        //cell.descriptionLabel.text = questionDetails[indexPath.item]
        //cell.loadQuestions(choices[indexPath.item], pointIndex: pointIndex[indexPath.item])
    
        
        return cell
    }
}

extension QuestionnaireCollectionViewController: QuestionnaireLayoutDelegate {
    
    func collectionView(collectionView: UICollectionView, heightForCellAtIndexPath indexPath: NSIndexPath, withWidth width: CGFloat) -> CGFloat {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("questionCell", forIndexPath: indexPath)
        cell.layoutIfNeeded()
        let size: CGSize = cell.contentView.systemLayoutSizeFittingSize(UILayoutFittingCompressedSize)
        return size.height
    }
    
}
