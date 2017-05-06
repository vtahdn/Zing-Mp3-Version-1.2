//
//  ViewController.swift
//  Zing Mp3 Version 1.2
//
//  Created by Viet Anh Doan on 5/6/17.
//  Copyright © 2017 Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lb: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        img.alpha=0
        lb.alpha=0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 4, animations: {
            self.img.alpha=1
        }, completion: {
            (finished) in UIView.animate(withDuration: 3, animations: {
                self.lb.center=CGPoint(x: self.img.center.x, y: 100)
                self.lb.alpha=1
            })
        })
    }
    
}

