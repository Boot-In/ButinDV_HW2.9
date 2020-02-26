//
//  ViewController.swift
//  ButinDV_HW2.9
//
//  Created by Dmitriy Butin on 26.02.2020.
//  Copyright © 2020 Dmitriy Butin. All rights reserved.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationLabel: UILabel!
    @IBOutlet weak var animationButton: SpringButton!
    
    var firstAnimation = AminationModel.getAnimationSetting()

    override func viewDidLoad() {
        super.viewDidLoad()

        goAnimation(view: animationView)
        updateInfo()
    }

    
    @IBAction func animationButtonAction(_ sender: SpringButton) {
        goAnimation(view: animationView)
        updateInfo()
        sender.animation = "pop"
        sender.animate()
    }
    
    func goAnimation(view: SpringView) {
        view.force = firstAnimation.force
        view.delay = firstAnimation.delay
        view.duration = firstAnimation.duration
        view.repeatCount = firstAnimation.repeatCount
        view.animation = firstAnimation.anamation
        view.curve = firstAnimation.curve
        view.animate()
    }
    
    func updateInfo() {
        let secondAnimation = AminationModel.getAnimationSetting()
        
        animationButton.setTitle("Next: \(secondAnimation.anamation)",
            for: .normal)
        
        animationLabel.text = "Тип анимации: \(firstAnimation.anamation)\n Кривая: \(firstAnimation.curve)\n force: \(String(format: "%.2f",firstAnimation.force))\n delay: \(String(format: "%.2f",firstAnimation.delay))\n duration: \(String(format: "%.2f",firstAnimation.duration))\n Повторов: \(Int(firstAnimation.repeatCount))"
        
        firstAnimation = secondAnimation
    }
    
}

