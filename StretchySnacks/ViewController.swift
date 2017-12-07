//
//  ViewController.swift
//  StretchySnacks
//
//  Created by Larry Luk on 2017-12-07.
//  Copyright © 2017 Larry Luk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var navBarHeight: NSLayoutConstraint!
    @IBOutlet weak var navBarView: UIView!
    @IBOutlet weak var addBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    @IBAction func addBtnPressed(_ sender: UIButton) {
        if (navBarHeight.constant == 64) {
            UIView.animate(withDuration: 0.7,
                           delay: 0,
                           usingSpringWithDamping: 0.5,
                           initialSpringVelocity: 0.5,
                           options: .curveEaseInOut,
                           animations: {
                            self.navBarHeight.constant = 200
                            self.view.layoutIfNeeded()
                            self.addBtn.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 4)
            },
                           completion: nil)
            
        } else {
            UIView.animate(withDuration: 0.7,
                           delay: 0,
                           usingSpringWithDamping: 0.5,
                           initialSpringVelocity: 0.5,
                           options: .curveEaseInOut,
                           animations: {
                            self.navBarHeight.constant = 64
                            self.view.layoutIfNeeded()
                            self.addBtn.transform = CGAffineTransform.identity
            },
                           completion: nil)
        }
      }
}

