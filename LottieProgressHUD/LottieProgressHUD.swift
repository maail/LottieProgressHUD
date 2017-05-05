//
//  LottieProgressHUD.swift
//  LottieProgressHUD
//
//  Created by Mohamed Maail Rasheed on 13/04/2017.
//  Copyright © 2017 Thirdegene. All rights reserved.
//

import Foundation
import UIKit
import Lottie

class LottieProgressHUD: UIView {
    
    static let shared = LottieProgressHUD()
    let hudView: UIView
    var animationView: LOTAnimationView
    
    //options
    var hudWidth:CGFloat    = 80
    var hudHeight:CGFloat   = 80
    var hudBackgroundColor  = UIColor.white
    var animationFileName   = ""
    var borderWidth:CGFloat = 1
    var borderColor         = UIColor.black.withAlphaComponent(0.2).cgColor
    var borderRadius:CGFloat = 15
    
    override init(frame: CGRect) {
        self.hudView = UIView()
        self.animationView = LOTAnimationView()
        super.init(frame: frame)
        self.setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.hudView = UIView()
        self.animationView = LOTAnimationView()
        super.init(coder: aDecoder)
        self.setup()
    }
    
    func setup() {
        self.addSubview(hudView)
    }
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        if let superview = self.superview {
            self.animationView.removeFromSuperview()
            
            let width: CGFloat  = self.hudWidth
            let height: CGFloat = self.hudHeight
            self.frame = CGRect(x: (superview.frame.size.width / 2) - (width / 2),y: (superview.frame.height / 2) - (height / 2), width: width, height: height)//make it centered in the view
            hudView.frame = self.bounds
            hudView.backgroundColor = self.hudBackgroundColor
            layer.borderColor = self.borderColor
            layer.borderWidth = self.borderWidth
            layer.cornerRadius  = self.borderRadius
            layer.masksToBounds = true
            
            self.animationView = LOTAnimationView(name: self.animationFileName)
            self.animationView.frame = CGRect(x: 0, y: 0, width: self.hudView.frame.width, height: self.hudView.frame.size.height)
            self.animationView.contentMode = .scaleAspectFill
            
            self.hudView.addSubview(animationView)
            self.animationView.loopAnimation = true
            self.animationView.play()
            
            self.hide()
        }
    }
    
    func show() {
        self.isHidden = false
    }
    
    func hide() {
        self.isHidden = true
    }
}
