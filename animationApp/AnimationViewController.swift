//
//  ViewController.swift
//  animationApp
//
//  Created by Максим Кулагин on 04.08.2022.
//

import UIKit
import SpringAnimation

class AnimationViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet var springAnimationView: SpringView!
    
    @IBOutlet var presetLable: UILabel!
    @IBOutlet var curveLable: UILabel!
    @IBOutlet var forceLable: UILabel!
    @IBOutlet var durationLable: UILabel!
    @IBOutlet var delayLable: UILabel!
    
    var startAnimation = OrderOfDisplay.first
    
    //MARK: - IBAction
    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        setValue()
        
        if springAnimationView.animation != "" {
            presetLable.text = "present: \"\(springAnimationView.animation)\"\n"
        }
        if springAnimationView.curve != "" {
            curveLable.text = "curve: \"\(springAnimationView.curve)\"\n"
        }
        if springAnimationView.force != 1 {
            forceLable.text = String(format: "force: %.1f\n", Double(springAnimationView.force))
        }
        if springAnimationView.duration != 0.7 {
            durationLable.text = String(format: "duration: %.1f\n", Double(springAnimationView.duration))
        }
        if springAnimationView.delay != 0 {
            delayLable.text = String(format: "delay: %.1f\n", Double(springAnimationView.delay))
        }
        
        sender.setTitle(
            "Run \(springAnimationView.animation)",
            for: .normal
        )
    }
}

// MARK: - PrivateMephods
extension AnimationViewController {
    
    private func setValue() {
        
        switch startAnimation {
            case .first:
                springAnimationView.animation = "swing"
                springAnimationView.curve = curvesAnimations[
                    Int.random(in: 0..<curvesAnimations.count)
                ]
                springAnimationView.force = CGFloat.random(in: 0...1)
                springAnimationView.duration = CGFloat.random(in: 0...2)
                springAnimationView.delay = CGFloat.random(in: 0...2)
                springAnimationView.animate()
                startAnimation = .second
            case .second:
                springAnimationView.animation = presentAnimation[
                    Int.random(in: 0..<presentAnimation.count)
                ]
                springAnimationView.curve = curvesAnimations[
                    Int.random(in: 0..<curvesAnimations.count)
                ]
                springAnimationView.force = CGFloat.random(in: 0...1)
                springAnimationView.duration = CGFloat.random(in: 0...2)
                springAnimationView.delay = CGFloat.random(in: 0...2)
                springAnimationView.animate()
        }
    }
}






