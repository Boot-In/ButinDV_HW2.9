//
//  ModelAnimation.swift
//  ButinDW_HW2.9
//
//  Created by Dmitriy Butin on 26.02.2020.
//  Copyright © 2020 Dmitriy Butin. All rights reserved.
//
import UIKit

struct AminationModel {
    var force: CGFloat
    var delay: CGFloat
    var duration: CGFloat
    var repeatCount: Float
    var anamation: String
    var curve: String
}

extension AminationModel {
    static func getAnimationSetting() -> AminationModel {
        
        let anime = TypeAnimation()
        
        let force = CGFloat.random(in: 0..<2)
        let delay = CGFloat.random(in: 0..<2)
        let duration = CGFloat.random(in: 0..<2)
        let repeatCount = Float(Int.random(in: 0..<5))
        let anamation = anime.animationType.randomElement()!
        let curve = anime.curveType.randomElement()!
        
        let firstAnimation = AminationModel(
            force: force, delay: delay, duration: duration,
            repeatCount: repeatCount, anamation: anamation, curve: curve
        )
        return firstAnimation
    }
}

struct TypeAnimation {
    
    let animationType = ["slideLeft", "slideRight", "slideDown", "slideUp",
                         "squeezeLeft", "squeezeRight", "squeezeDown",
                         "squeezeUp", "fadeIn", "fadeOut", "fadeOutIn",
                         "fadeInLeft", "fadeInRight", "fadeInDown", "fadeInUp",
                         "zoomIn", "zoomOut", "fall", "shake", "pop", "flipX",
                         "flipY", "morph", "squeeze", "flash", "wobble", "swing"]
    
    let curveType = ["easeIn", "easeOut", "easeInOut", "linear", "spring",
                     "easeInSine", "easeOutSine", "easeInOutSine", "easeInQuad",
                     "easeOutQuad", "easeInOutQuad", "easeInCubic",
                     "easeOutCubic", "easeInOutCubic", "easeInQuart",
                     "easeOutQuart", "easeInOutQuart", "easeInQuint",
                     "easeOutQuint", "easeInOutQuint", "easeInExpo",
                     "easeOutExpo", "easeInOutExpo", "easeInCirc",
                     "easeOutCirc", "easeInOutCirc", "easeInBack",
                     "easeOutBack", "easeInOutBack"]
}
