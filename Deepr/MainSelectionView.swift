//
//  MainSelectionView.swift
//  Deepr
//
//  Created by DegawaIkuo on 7/3/16.
//  Copyright © 2016 ikuwow. All rights reserved.
//

import UIKit

class MainSelectionView: UIView {
    
    @IBOutlet var mailSelections: [UIButton]!
    
    class func instance() -> MainSelectionView {
        return UINib(nibName: "MainSelectionView", bundle: nil).instantiateWithOwner(self, options: nil)[0] as! MainSelectionView
    }
    /*

    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
