//
//  Animations.swift
//  H.W 2.9.Animation
//
//  Created by Ирина on 24.11.2021.
//

import Spring

struct Animation {
    enum Presets: String, CaseIterable {
        case slideLeft
        case slideRight
        case slideDown
        case slideUp
        case squeezeLeft
        case squeezeRight
        case squeezeDown
        case squeezeUp
        case fadeIn
        case fadeOut
        case fadeOutIn
        case fadeInLeft
        case fadeInRight
        case fadeInDown
        case fadeInUp
        case zoomIn
        case zoomOut
        case fall
        case shake
        case pop
        case flipX
        case flipY
        case morph
        case squeeze
        case flash
        case wobble
        case swing
        
        static func random<G: RandomNumberGenerator>(using generator: inout G) -> Presets {
            return Presets.allCases.randomElement(using: &generator)!
        }

        static func random() -> Presets {
            var generatePreset = SystemRandomNumberGenerator()
            return Presets.random(using: &generatePreset)
        }
    }
    
    enum Curve: String, CaseIterable {
        case easeIn
        case easeOut
        case easeInOut
        case linear
        case spring
        case easeInSine
        case easeOutSine
        case easeInOutSine
        case easeInQuad
        case easeOutQuad
        case easeInOutQuad
        case easeInCubic
        case easeOutCubic
        case easeInOutCubic
        case easeInQuart
        case easeOutQuart
        case easeInOutQuart
        case easeInQuint
        case easeOutQuint
        case easeInOutQuint
        case easeInExpo
        case easeOutExpo
        case easeInOutExpo
        case easeInCirc
        case easeOutCirc
        case easeInOutCirc
        case easeInBack
        case easeOutBack
        case easeInOutBack
        
        static func random<G: RandomNumberGenerator>(using generator: inout G) -> Curve {
                return Curve.allCases.randomElement(using: &generator)!
        }

        static func random() -> Curve {
            var generateCurve = SystemRandomNumberGenerator()
            return Curve.random(using: &generateCurve)
        }
    }
    
    let preset: Presets
    let curve: Curve
    let force: Double
    let duration: Double
    let delay: Double
    
    init(random _: Bool?) {
        preset = Presets.random()
        curve = Curve.random()
        force = Double.random(in: 1...2)
        duration = Double.random(in: 1...2)
        delay = Double.random(in: 0...1)
    }
}

    
