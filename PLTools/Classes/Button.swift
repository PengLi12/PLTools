//
//  Button.swift
//  ExtensionButton
//
//  Created by mac mini 2 on 2020/11/20.
//

import Foundation
import UIKit

public enum ButtonEdgeInsetsStyle {
    ///image在上,label在下
    case top
    ///image在左,label在右
    case left
    ///image在下,label在上
    case bottom
    ///image在右,label在左
    case right
}

extension UIButton {
    
    public func layoutButton(style: ButtonEdgeInsetsStyle, space: CGFloat = 0) {
        let imageWidth = imageView?.frame.size.width
        let imageHeight = imageView?.frame.size.height
        let titleCsWidth = titleLabel?.intrinsicContentSize.width
        let titleCsHeight = titleLabel?.intrinsicContentSize.height
        switch style {
        case .top:
            imageEdgeInsets = UIEdgeInsets.init(top: -(titleCsHeight! + space), left: 0, bottom: 0, right: -titleCsWidth!)
            titleEdgeInsets = UIEdgeInsets.init(top: 0, left: -imageWidth!, bottom: -(imageHeight! + space), right: 0)
        case .left:
            if contentHorizontalAlignment == .left {
                titleEdgeInsets = UIEdgeInsets.init(top: 0, left: space, bottom: 0, right: 0)
            } else if contentHorizontalAlignment == .right {
                imageEdgeInsets = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: space)
            } else {
                let spaceing = 0.5 * space
                imageEdgeInsets = UIEdgeInsets.init(top: 0, left: -spaceing, bottom: 0, right: spaceing)
                titleEdgeInsets = UIEdgeInsets.init(top: 0, left: spaceing, bottom: 0, right: -spaceing)
            }
        case .bottom:
            imageEdgeInsets = UIEdgeInsets.init(top: titleCsHeight! + space, left: 0, bottom: 0, right: -titleCsWidth!)
            titleEdgeInsets = UIEdgeInsets.init(top: 0, left: -imageWidth!, bottom: imageHeight! + space, right: 0)
        case .right:
            let titleWidth = titleLabel?.frame.size.width
            if contentHorizontalAlignment == .left {
                imageEdgeInsets = UIEdgeInsets.init(top: 0, left: titleWidth! + space, bottom: 0, right: 0)
                titleEdgeInsets = UIEdgeInsets.init(top: 0, left: -imageWidth!, bottom: 0, right: 0)
            } else if contentHorizontalAlignment == .right {
                imageEdgeInsets = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: -titleWidth!)
                titleEdgeInsets = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: imageWidth! + space)
            } else {
                let imageOffset = titleWidth! + 0.5 * space
                let titleOffset = imageWidth! + 0.5 * space
                imageEdgeInsets = UIEdgeInsets.init(top: 0, left: imageOffset, bottom: 0, right: -imageOffset)
                titleEdgeInsets = UIEdgeInsets.init(top: 0, left: -titleOffset, bottom: 0, right: titleOffset)
            }
        }
        
    }
    
}
