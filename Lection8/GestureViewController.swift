//
//  GestureViewController.swift
//  Lection8
//
//  Created by Іван Штурхаль on 05.09.2023.
//

import UIKit

// поки що він передає інфо на контролер

protocol GestureDelegate: AnyObject {
    func didTap(_ view: GestureViewController)
}


class GestureViewController: UIView {
    
    weak var delegate: GestureDelegate?
    
    override class func awakeFromNib() {
        
    }
   @objc
    func didTap() {
        delegate?.didTap(self)
        print(#function)
//        print("Gesture View Tap")
    }
   
}
