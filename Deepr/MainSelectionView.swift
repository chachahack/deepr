//
//  MainSelectionView.swift
//  Deepr
//
//  Created by DegawaIkuo on 7/3/16.
//  Copyright © 2016 ikuwow. All rights reserved.
//

import UIKit

class MainSelectionView: UIView {
    
    @IBOutlet weak var CoffeeSelectionView: UIButton!
    
    class func instance() -> MainSelectionView {
        return UINib(nibName: "MainSelectionView", bundle: nil).instantiateWithOwner(self, options: nil)[0] as! MainSelectionView
    }

    @IBAction func coffeeTapped(sender: AnyObject) {
        print("coffee")
    }
    @IBAction func lunchTapped(sender: AnyObject) {
        print("lunch")
    }
    @IBAction func dinnerTapped(sender: AnyObject) {
        print("dinner")
    }
    @IBAction func drinkTapped(sender: AnyObject) {
        print("drink")
    }
    
    /*

    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
