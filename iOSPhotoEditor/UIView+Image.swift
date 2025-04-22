//
//  UIView+Image.swift
//  Photo Editor
//
//  Created by Mohamed Hamed on 4/23/17.
//  Copyright © 2017 Mohamed Hamed. All rights reserved.
//

import UIKit

extension UIView {
    /**
     Convert UIView to UIImage
     */
    func toImage(scale: CGFloat) -> UIImage {
        let format = UIGraphicsImageRendererFormat.default()
        format.scale = scale
        format.opaque = isOpaque
        let renderer = UIGraphicsImageRenderer(size: bounds.size, format: format)
        return renderer.image { context in
            drawHierarchy(in: bounds, afterScreenUpdates: true)
        }
    }
}
