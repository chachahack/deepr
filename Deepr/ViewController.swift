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
        
        let originHeight = MainScrollView.bounds.height
        print(originHeight)
        
        // 場所決めてイレル
        let SecondSelectionViewInstance = SecondSelectionView.instance()
        SecondSelectionViewInstance.frame.origin.y = originHeight
        self.MainScrollView.addSubview(SecondSelectionViewInstance)
        
        // スクロールする
        let scrollPoint = CGPoint(x: 0.0, y: originHeight - (self.navigationController?.navigationBar.frame.size.height)! - 20)
        self.MainScrollView.setContentOffset(scrollPoint, animated: true)
        
        // SecondSelectionViewInstance.layer.position = CGPoint(x: 0, y:0)
        // こいつはやめとこう
        
        
            // いれる

        // SecondSelectionViewInstance.frame.origin = CGPoint(x: 0, y:originHeight)
        
        // スクロールする
        /*

 */
    }



}

