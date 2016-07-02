//
//  ViewController.swift
//  Deepr
//
//  Created by DegawaIkuo on 7/2/16.
//  Copyright © 2016 ikuwow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var MainScrollView: UIScrollView!
    
    var MainSelectionViewInstance = MainSelectionView.instance()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Deepr!"
        
        for mainSelection in MainSelectionViewInstance.mailSelections {
            mainSelection.addTarget(self, action: #selector(ViewController.mainButtonTapped(_:)), forControlEvents: .TouchUpInside)
        }
        
        self.MainScrollView.addSubview(MainSelectionViewInstance)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func mainButtonTapped(sender: UIButton) {
        print(sender.tag)
        if sender.tag == 3 {
            performSegueWithIdentifier("customSegue", sender: self)
            return
        }
        let SecondSelectionViewInstance = SecondSelectionView.instance()
        
        /*
        let width = self.MainScrollView.frame.size.width
        let height = self.MainScrollView.frame.size.height
        */
        SecondSelectionViewInstance.frame = CGRect(
            x: 0,
            y: 300,
            width: 400,
            height: 400
        )
        
        let plusheight:CGFloat  = 800.0;

        self.MainScrollView.contentSize = CGSizeMake(
            self.MainScrollView.contentSize.width,
            self.MainScrollView.contentSize.height + plusheight
        )
        
        self.MainScrollView.insertSubview(SecondSelectionViewInstance, belowSubview: MainSelectionViewInstance)
        
        let scrollPoint = CGPoint(x: 0.0, y: plusheight)
        self.MainScrollView.setContentOffset(scrollPoint,animated: true)
    }



}

