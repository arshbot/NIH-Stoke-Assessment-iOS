//
//  CustomTableViewCell.swift
//  NIH Stoke Scale Assessment
//
//  Created by Harsha Goli on 8/23/16.
//  Copyright © 2016 Harsha Goli. All rights reserved.
//

import Foundation
import UIKit

//class CustomTableViewCell: UITableViewCell {
extension UITableViewCell {
    func loadQuestions(questions: [String], pointIndex: [Int]) -> UISegmentedControl {
        let segment: CustomSegmentedControl = CustomSegmentedControl(items: questions)
        segment.transform = CGAffineTransformMakeRotation(CGFloat(M_PI / 2.0));
        for view in segment.subviews {
            for subview in view.subviews {
                if subview.isKindOfClass(UILabel){
                    subview.transform = CGAffineTransformMakeRotation(CGFloat(-M_PI / 2.0))
                }
            }
        }
        segment.pointIndex = pointIndex
        //self.addSubview(segment)
        return segment
    }
    
}
/*
class CustomSegmentedControl: UISegmentedControl {
    var pointIndex: [Int]!
    
    func score() -> Int{
        for i in 1...(pointIndex.count-1){
            if selectedSegmentIndex == i{
                return pointIndex[i]
            }
        }
        return 0
    }
    
}
 */