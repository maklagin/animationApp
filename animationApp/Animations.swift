//
//  Animations.swift
//  animationApp
//
//  Created by Максим Кулагин on 06.08.2022.
//

let presentAnimation: [String] = [
    "pop",
    "slideLeft",
    "slideRight",
    "slideDown",
    "slideUp",
    "squeezeLeft",
    "squeezeRight",
    "squeezeDown",
    "squeezeUp",
    "fadeIn",
    "fadeOut",
    "fadeOutIn",
    "fadeInLeft",
    "fadeInRight",
    "fadeInDown",
    "fadeInUp",
    "zoomIn",
    "zoomOut",
    "fall",
    "shake",
    "flipX",
    "flipY",
    "morph",
    "squeeze",
    "flash",
    "wobble",
    "swing"
]

let curvesAnimations: [String] = [
    "easeIn",
    "easeOut",
    "easeInOut",
    "linear",
    "spring",
    "easeInSine",
    "easeOutSine",
    "easeInOutSine",
    "easeInQuad",
    "easeOutQuad",
    "easeInOutQuad",
    "easeInCubic",
    "easeOutCubic",
    "easeInOutCubic",
    "easeInQuart",
    "easeOutQuart",
    "easeInOutQuart",
    "easeInQuint",
    "easeOutQuint",
    "easeInOutQuint",
    "easeInExpo",
    "easeOutExpo",
    "easeInOutExpo",
    "easeInCirc",
    "easeOutCirc",
    "easeInOutCirc",
    "easeInBack",
    "easeOutBack",
    "easeInOutBack"
]

enum AnimationPreset: Int, CaseIterable {
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
}

enum AnimationCurve: Int, CaseIterable {
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
}

enum OrderOfDisplay {
    case first
    case second
}
