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
    var stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupStackview()
        stackView.isHidden = true
        
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
                            self.stackView.isHidden = false
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
                            self.stackView.isHidden = true
            },
                           completion: nil)
        }
    }
    
    func setupStackview () {
        let image1 = UIImageView.init(image: UIImage.init(named: "oreos"))
        image1.heightAnchor.constraint(equalToConstant: 80).isActive = true
        image1.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        let tap1 = UITapGestureRecognizer(target: self, action: #selector(image1Tabbed))
        image1.isUserInteractionEnabled = true
        image1.addGestureRecognizer(tap1)
        
        
        let image2 = UIImageView.init(image: UIImage.init(named: "pizza_pockets"))
        image2.heightAnchor.constraint(equalToConstant: 80).isActive = true
        image2.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(image2Tabbed))
        image2.isUserInteractionEnabled = true
        image2.addGestureRecognizer(tap2)
        
        let image3 = UIImageView.init(image: UIImage.init(named: "pop_tarts"))
        image3.heightAnchor.constraint(equalToConstant: 80).isActive = true
        image3.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        let tap3 = UITapGestureRecognizer(target: self, action: #selector(image3Tabbed))
        image3.isUserInteractionEnabled = true
        image3.addGestureRecognizer(tap3)
        
        let image4 = UIImageView.init(image: UIImage.init(named: "popsicle"))
        image4.heightAnchor.constraint(equalToConstant: 80).isActive = true
        image4.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        let tap4 = UITapGestureRecognizer(target: self, action: #selector(image4Tabbed))
        image4.isUserInteractionEnabled = true
        image4.addGestureRecognizer(tap4)
        
        let image5 = UIImageView.init(image: UIImage.init(named: "ramen"))
        image5.heightAnchor.constraint(equalToConstant: 80).isActive = true
        image5.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        let tap5 = UITapGestureRecognizer(target: self, action: #selector(image5Tabbed))
        image5.isUserInteractionEnabled = true
        image5.addGestureRecognizer(tap5)
        
        let imageArray = [image1, image2, image3, image4, image5]
        
        stackView = UIStackView(arrangedSubviews: imageArray)
        stackView.axis = UILayoutConstraintAxis.horizontal
        stackView.distribution = UIStackViewDistribution.equalSpacing
        stackView.alignment = UIStackViewAlignment.bottom
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        navBarView.addSubview(stackView)
        
        stackView.centerXAnchor.constraint(equalTo: navBarView.centerXAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: navBarView.bottomAnchor).isActive = true
        stackView.leadingAnchor.constraint(lessThanOrEqualTo: navBarView.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(lessThanOrEqualTo: navBarView.trailingAnchor).isActive = true
        
    }
    
    @objc func image1Tabbed () {
        print ("tapped image1")
        
    }
    
    @objc func image2Tabbed () {
        print ("tapped image2")
        
    }
    
    @objc func image3Tabbed () {
        print ("tapped image3")
        
    }
    
    @objc func image4Tabbed () {
        print ("tapped image4")
        
    }
    
    @objc func image5Tabbed () {
        print ("tapped image5")
        
    }
    
    
}

