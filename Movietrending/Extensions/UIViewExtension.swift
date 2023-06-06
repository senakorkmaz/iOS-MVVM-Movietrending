//
//  UIViewExtension.swift
//  Movietrending
//
//  Created by Senanur Korkmaz on 23.05.2023.
//

import Foundation
import UIKit

extension UIView{
    
    func round(_ radius: CGFloat = 10 ){
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
    
    func addBorder(color: UIColor, width: CGFloat){
        self.layer.borderWidth = width
        self.layer.backgroundColor = color.cgColor
    }
    
}
