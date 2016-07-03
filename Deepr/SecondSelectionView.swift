//
//  SecondSelectionView.swift
//  Deepr
//
//  Created by DegawaIkuo on 7/3/16.
//  Copyright © 2016 ikuwow. All rights reserved.
//

import UIKit

class SecondSelectionView: UIView {
    
    @IBOutlet var quickGenres: [UIButton]!
    
    @IBOutlet var moodCollection: [UIButton]!
    
    class func instance() -> SecondSelectionView {
        return UINib(nibName: "SecondSelectionView", bundle: nil).instantiateWithOwner(self, options: nil)[0] as! SecondSelectionView
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
