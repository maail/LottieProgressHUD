//
//  ViewController.swift
//  LottieProgressHUD
//
//  Created by Mohamed Maail Rasheed on 13/04/2017.
//  Copyright © 2017 Thirdegene. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let progressHUD = LottieProgressHUD.shared
        progressHUD.animationFileName = "bounching_ball"
//      progressHUD.animationFileName = "loading_semicircle"
//      progressHUD.animationFileName = "material_loader"
        progressHUD.hudHeight = 100
        progressHUD.hudWidth = 100
        progressHUD.hudBackgroundColor = UIColor.white
        self.view.addSubview(progressHUD)
        progressHUD.show()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

