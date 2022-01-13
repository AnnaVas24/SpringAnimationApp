//
//  AnimationModel.swift
//  SpringAnimationApp
//
//  Created by Vasichko Anna on 13.01.2022.
//

import Spring

struct Animation {
    let preset: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    
    var description: String {
        """
preset: \(preset)
curve: \(curve)
force: \(String(format: "%.02f", force))
duration: \(String(format: "%.02f", duration))
"""
    }
    static func getAnimation() -> Animation {
        Animation(preset: Spring.AnimationPreset.allCases.randomElement()?.rawValue ?? "",
                  curve: Spring.AnimationCurve.allCases.randomElement()?.rawValue ?? "",
                  force: CGFloat.random(in: 1...5),
                  duration: CGFloat.random(in: 1...5))
    }
  
}
