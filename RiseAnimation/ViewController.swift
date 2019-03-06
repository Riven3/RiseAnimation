//
//  ViewController.swift
//  RiseAnimation
//
//  Created by 百年 on 2019/3/6.
//  Copyright © 2019年 百年. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animateView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func animateFuntion(_ sender: UIButton) {
        let frame = self.animateView.frame
        self.animateView.frame = CGRect(x: frame.origin.x +  frame.size.width/2, y: UIScreen.main.bounds.size.height, width: 0, height: 0)
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0.3, options: UIView.AnimationOptions.beginFromCurrentState, animations: {
            self.animateView.frame = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: frame.size.height)
        }) { (isFinish) in
            
        }
    }
}

