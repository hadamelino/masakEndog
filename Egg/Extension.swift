//
//  Extension.swift
//  Egg
//
//  Created by Hada Melino Muhammad on 09/04/22.
//

import UIKit

extension UIView {
    func fadeTransition(_ duration:CFTimeInterval, _ type: CATransitionType, _ subtype:CATransitionSubtype) {
        let animation = CATransition()
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.default)
        animation.subtype = subtype
        animation.type = type
        animation.duration = duration
        layer.add(animation, forKey: CATransitionType.fade.rawValue)
    }
}
