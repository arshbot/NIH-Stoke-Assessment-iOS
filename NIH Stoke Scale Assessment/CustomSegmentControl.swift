//
//  CustomSegmentControlCell.swift
//  NIH Stoke Scale Assessment
//
//  Created by Harsha Goli on 8/29/16.
//  Copyright © 2016 Harsha Goli. All rights reserved.
//

import Foundation
import UIKit

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