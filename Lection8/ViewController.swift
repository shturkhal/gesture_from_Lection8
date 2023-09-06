//
//  ViewController.swift
//  Lection8
//
//  Created by Іван Штурхаль on 05.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gestureView: GestureViewController! {
        didSet {
            super.awakeFromNib()
            let recognizer = UITapGestureRecognizer(target: gestureView, action: #selector(GestureViewController.didTap))
            recognizer.numberOfTapsRequired = 1
            recognizer.numberOfTouchesRequired = 1
            gestureView.addGestureRecognizer(recognizer)
            ///////////////
            gestureView.delegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
}

extension ViewController: GestureDelegate {
    func didTap(_ view: GestureViewController) {
        print("delegate didTap")
        
    }
}
