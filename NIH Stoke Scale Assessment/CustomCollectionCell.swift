//
//  CustomCollectionCell.swift
//  NIH Stoke Scale Assessment
//
//  Created by Harsha Goli on 8/29/16.
//  Copyright © 2016 Harsha Goli. All rights reserved.
//

import Foundation
import UIKit

class CustomCollectionCell: UICollectionViewCell {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionDescriptionLabel: UILabel!
    @IBOutlet weak var viewForSegment: UIView!
    var segment: CustomSegmentedControl!
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.translatesAutoresizingMaskIntoConstraints = false
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        questionDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        viewForSegment.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    func heightForView(text:String, width:CGFloat) -> CGFloat{
        let label:UILabel = UILabel(frame: CGRectMake(0, 0, width, CGFloat.max))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.ByWordWrapping
        label.text = text
        
        label.sizeToFit()
        return label.frame.height
    }
    
    func loadQuestions(choices: [String], pointIndex: [Int]) {
        segment = CustomSegmentedControl(items: choices)
        segment.transform = CGAffineTransformMakeRotation(CGFloat(M_PI / 2.0));
        var cellTracker: Int = 0
        for segmentCell in segment.subviews {
            var tracker: Int = 0
            
            for subview in segmentCell.subviews {
                if subview.isKindOfClass(UILabel){
                    
                    subview.transform = CGAffineTransformMakeRotation(CGFloat(-M_PI / 2.0))
                    //let sv = subview as! UILabel
                    
                    var margins: UILayoutGuide = subview.layoutMarginsGuide
                    var superMargins: UILayoutGuide = segmentCell.layoutMarginsGuide
                    
                    
                    /*
                     segmentCell.topAnchor.constraintEqualToAnchor(margins.topAnchor).active = true
                     segmentCell.bottomAnchor.constraintEqualToAnchor(margins.bottomAnchor).active = true
                     segmentCell.leadingAnchor.constraintEqualToAnchor(margins.leadingAnchor).active = true
                     */
                    
                    
                    /*
                     //Height Constraint
                     segmentCell.addConstraint(NSLayoutConstraint(item: segmentCell,
                     attribute: NSLayoutAttribute.Height,
                     relatedBy: NSLayoutRelation.Equal,
                     toItem: subview,
                     attribute:NSLayoutAttribute.NotAnAttribute,
                     multiplier:1,
                     constant: heightForView(sv.text!, width: self.viewForSegment.frame.width)))
                     //Width Constraint
                     segmentCell.addConstraint(NSLayoutConstraint(item: segmentCell,
                     attribute: NSLayoutAttribute.Width,
                     relatedBy: NSLayoutRelation.Equal,
                     toItem: nil,
                     attribute:NSLayoutAttribute.NotAnAttribute,
                     multiplier:1,
                     constant: self.viewForSegment.frame.width))
                     
                     */
                    print("\(margins.accessibilityElements)")
                    
                }
                
                
                
                print("#")
                print("Cell: \(cellTracker) = \(String(segmentCell))")
                print("subCell: \(tracker) = \(String(subview))")
                tracker+=1
            }
            cellTracker+=1
        }
        
        
        
        
        segment.pointIndex = pointIndex
        /*
         self.addConstraint(NSLayoutConstraint(item: segment, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self, attribute: NSLayoutAttribute.LeftMargin, multiplier: 1, constant: 0))
         self.addConstraint(NSLayoutConstraint(item: segment, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: self, attribute: NSLayoutAttribute.BottomMargin, multiplier: 1, constant: 0))
         self.addConstraint(NSLayoutConstraint(item: segment, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: self, attribute: NSLayoutAttribute.RightMargin, multiplier: 1, constant: 0))
         self.addConstraint(NSLayoutConstraint(item: segment, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: questionDescriptionLabel, attribute: NSLayoutAttribute.Bottom, multiplier: 1, constant: 20))
         segment.frame = CGRect(origin: CGPoint(x: questionLabel.x, y: ), size: segment.systemLayoutSizeFittingSize(UILayoutFittingExpandedSize))
         */
        
        segment.bounds.size = segment.systemLayoutSizeFittingSize(UILayoutFittingExpandedSize)
        viewForSegment.addSubview(segment)
        
        let margins = viewForSegment.layoutMarginsGuide
        
        segment.topAnchor.constraintEqualToAnchor(margins.topAnchor).active = true
        segment.leadingAnchor.constraintEqualToAnchor(margins.leadingAnchor).active = true
        segment.trailingAnchor.constraintEqualToAnchor(margins.trailingAnchor).active = true
        
    }
}