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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Deepr!"
        let MainSelectionViewInstance = MainSelectionView.instance()
        
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
    }


}

